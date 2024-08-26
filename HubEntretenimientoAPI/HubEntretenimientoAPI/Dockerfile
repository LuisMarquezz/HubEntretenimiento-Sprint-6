# Usa una imagen base de .NET SDK para compilar y publicar la aplicación
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

# Copia los archivos de proyecto
COPY HubEntretenimientoAPI.csproj ./

# Restaura las dependencias
RUN dotnet restore HubEntretenimientoAPI.csproj

# Copia el resto de los archivos del proyecto
COPY . ./

# Compila la aplicación
RUN dotnet publish HubEntretenimientoAPI.csproj -c Release -o out

# Usa una imagen base de ASP.NET Core Runtime para ejecutar la aplicación
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build-env /app/out .

# Expone el puerto en el que la aplicación escuchará
EXPOSE 80

# Configura el comando de entrada para ejecutar la aplicación
ENTRYPOINT ["dotnet", "hub-entretenimiento-api.dll"]
