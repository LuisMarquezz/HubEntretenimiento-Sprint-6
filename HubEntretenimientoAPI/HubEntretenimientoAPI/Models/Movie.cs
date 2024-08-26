namespace HubEntretenimientoAPI.Models
{

    public class Pelicula
    {
        public int Id { get; set; }
        public required string Autor { get; set; }
        public required string Nombre { get; set; }
        public required string Genero { get; set; }
        public int Año { get; set; }
        public required string Director { get; set; }
        public required string Imagen { get; set; } // Asumiendo que es la URL de la imagen o un base64
    }
}