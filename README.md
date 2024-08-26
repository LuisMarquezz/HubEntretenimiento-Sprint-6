# Hub de entretenimiento - Luis Marquez Vargaz

##  Descripción  
Este proyecto es un Centro de Entretenimiento creado con propósitos de evaluación para Mega. Se trata de una aplicación de una sola página construida en Angular, donde se presentan imagenes de peliculas.  

### Objetivo  
Crear una aplicacion usando tecnologias modernas haciendo enfasis en sentir un ambiente de trabajo real 

##  Requerimientos técnicos:  
-Front:

  -Angular 18
  
  -Node 20.17

  -Boostrap 5.4

-Backend

  -.Net 8.0
  
  -API Swagger 3.1
  
  -SQL SERVER 18
  

## Proceso de desarrollo

Este proyecto se desarrollo a lo largo de semenas, primero el front, luego pruebas unitarias, despues creacion e implementacion de la BD, para al final crear un entorno real con docker y kubernetes.

##  ¿Cómo ejecutar la aplicación?

-- Clona el repositorio haciendo ```git clone ``` o de manera alternativa descargalo como archivo ZIP y descomprimelo en una carpeta.  

-- Instala de los paquetes y módulos requeridos ejecuta: ```npm install``` en la terminal de Visual Studio Code

-- Instala de los paquetes y módulos requeridos para asp.net core:  

```dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 8.0.0```  
```dotnet add package Microsoft.EntityFrameworkCore.Tools --version 8.0.0```  
```dotnet add package Microsoft.AspNetCore.App --version 8.0.0```  
-- Crear dos proyectos en visual studio uno para el front otro para el back

-- Crear la BD en Sql server con el archivo .sql que se encuentra en la carpeta SQL

-- Debes crear las imágenes de Docker, Abre la terminal en la dirección dentro de la carpeta del proyecto Angular y ejecuta el comando ```'docker build -t name .'``` esto creará la imagen con la configuración del archivo Dockerfile para la posterior creación del contenedor en los pods de kubernetes. 

--Hacer lo mismo para la carpeta de ASP.NET con el comando ```'docker build -t name .'```

-- Creación de los Pods Kubernetes, en la misma terminal ejecuta los siguientes comandos ```'kubectl apply -f deployment.yaml'```  ```'kubectl apply -f asp-deployment.yaml'``` ```'kubectl apply -f sql-deployment.yaml'``` , esto creará los pod.  

-- La aplicación ya se estará ejecutando, abre el navegador y ve a la dirección `http://localhost/` la aplicación se ejecutará en este enlace.  


##  Explicación  

Login
![img](https://github.com/LuisMarquezz/HubEntretenimiento-Sprint-6/blob/master/Imagenes/Login%20app.jpg?raw=true)

Home
![img](https://github.com/LuisMarquezz/HubEntretenimiento-Sprint-6/blob/master/Imagenes/Home%20App.jpg?raw=true)


##  Base de datos (Diagrama).
![img](https://github.com/LuisMarquezz/HubEntretenimiento-Sprint-6/blob/master/Imagenes/Diagrama%20BD.jpg?raw=true)

##  Documentación de API ASP.NET Core 8 - Swagger

Se utilizó Swagger para documentar y probar cada funcion de las APIs:
![img](https://github.com/LuisMarquezz/HubEntretenimiento-Sprint-6/blob/master/Imagenes/Api%20con%20Swagger.jpg?raw=true)


##  Docker y Kubernetes.

Primero la creacion de imagenes usando docker

Angular
![img](https://github.com/LuisMarquezz/HubEntretenimiento-Sprint-6/blob/master/Imagenes/DockerFrontCreacion.jpg?raw=true)

Entorno de produccion
![img](https://github.com/LuisMarquezz/HubEntretenimiento-Sprint-6/blob/master/Imagenes/Creacion%20de%20entorno%20PROD.jpg?raw=true)

API
![img](https://github.com/LuisMarquezz/HubEntretenimiento-Sprint-6/blob/master/Imagenes/DockerAPICreacion.jpg?raw=true)

Imagenes en docker
![img](https://github.com/LuisMarquezz/HubEntretenimiento-Sprint-6/blob/master/Imagenes/Docker%20imagenes.jpg?raw=true)

##  Mejoras a futuro.

Mejorar el servicio al usuario, dandole mas funciones ya que ahorita es muy limitado.
Implementar y cargar un entorno en un servidor para desplegar la aplicacion en la web y ya no depender de un entorno local.

##  Problemas conocidos.

1. Problemas con la API  
A la api le hacen falta funciones ya que no pude terminar de implementarla toda.

2. Problemas de codigo
Hace falta seguir refactorizando el codigo, antes no se contaba con una API creada por mi mismo, entonces falta adaptar partes para que todo funciones correctamentamente  


## Sprint Review
**¿Qué salio bien?**  
- La creacion de imagenes en docker
- Creacion de la API
- Implementacion de la API con la BD  

**¿Qué puedo hacer diferente?**
- Se pudieran crear servicios, organizar mejor el codigo y ademas darle mas seguridad y facilidad de escalamiento a la aplicación.  

**¿Qué no salio bien ?**  
- Al momento de implementar los contenedores en pods de kubernetes me salta un error, lo cual me imposibilito seguir adelante.
- Crear la API ya que no pude de terminar todas las funciones que necesitaba
- Me consumio bastante tiempo re-factorizar codigo, ajustandolo a la API, debo de planear mejor el desarrollo de las cosas   
