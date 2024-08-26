using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using HubEntretenimientoAPI.Models;

[ApiController]
[Route("api/[controller]")]
public class PeliculasController : ControllerBase
{
    public static List<Pelicula> peliculas = new List<Pelicula>();

    [HttpGet]
    public ActionResult<List<Pelicula>> GetPelicula()
    {
        return Ok(peliculas);
    }

    // [HttpGet]
    // public ActionResult<List<Pelicula>> GetPeliculasFavorites()
    // {
    //     return Ok();
    // }

    // [HttpGet]
    // public ActionResult<List<Pelicula>> GetPeliculasDontLike()
    // {
    //     return Ok();
    // }



    [HttpGet("{id}")]
    public ActionResult<Pelicula> GetPeliculaFavoritas(int id)
     {
        var pelicula = peliculas.FirstOrDefault(p => p.Id == id);
       if (pelicula == null)
      {
        return NotFound();
      }
         return Ok(pelicula);
     }


     [HttpPost]
     public ActionResult AddPelicula([FromBody] Pelicula nuevaPelicula)
     {
         nuevaPelicula.Id = peliculas.Count + 1; // Genera un Id incremental
         peliculas.Add(nuevaPelicula);
         return CreatedAtAction(nameof(GetPelicula), new { id = nuevaPelicula.Id }, nuevaPelicula);
     }

     [HttpPut("{id}")]
    public ActionResult UpdatePelicula(int id, [FromBody] Pelicula updatedPelicula)
    {
         var pelicula = peliculas.FirstOrDefault(p => p.Id == id);
         if (pelicula == null)
         {
            return NotFound();
        }

        pelicula.Autor = updatedPelicula.Autor;
        pelicula.Nombre = updatedPelicula.Nombre;
        pelicula.Genero = updatedPelicula.Genero;
         pelicula.Año = updatedPelicula.Año;
         pelicula.Director = updatedPelicula.Director;
         pelicula.Imagen = updatedPelicula.Imagen;

         return NoContent();
     }

     [HttpDelete("{id}")]
     public ActionResult DeletePelicula(int id)
     {
        var pelicula = peliculas.FirstOrDefault(p => p.Id == id);
         if (pelicula == null)
        {
            return NotFound();
        }

        peliculas.Remove(pelicula);
         return NoContent();
     }

    
}
