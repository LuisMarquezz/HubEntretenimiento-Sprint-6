import { Component } from '@angular/core';
import { Input } from '@angular/core';

@Component({
  selector: 'app-card-movie',
  templateUrl: './card-movie.component.html',
  styleUrl: './card-movie.component.css'
})
export class CardMovieComponent {
  @Input() movie: { title: string, description: string, image: string }= 
  {
    title: '',
    description: '',
    image: ''

  };

  verPelicula() {
    console.log('Ver película:', this.movie.title);
  }

  anadirAFavoritos() {
    console.log('Añadir a favoritos:', this.movie.title);
  }
}
