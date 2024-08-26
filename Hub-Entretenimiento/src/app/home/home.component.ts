import { Component } from '@angular/core';
import { url } from 'inspector';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {
  movies = [
    {
      title: 'El Padrino',
      description: 'Un drama épico sobre la familia Corleone, una de las más poderosas familias de la mafia en Nueva York.',
      image: '/src/assets/images/imagen1.jpg'
    },
    {
      title: 'El Señor de los Anillos: La Comunidad del Anillo',
      description: 'Un joven hobbit, Frodo, hereda un anillo poderoso y debe emprender un viaje para destruirlo.',
      image: 'assets/images/imagen2.jpg'
    },
    {
      title: 'Star Wars: Episodio IV - Una Nueva Esperanza',
      description: 'Luke Skywalker se une a un caballero Jedi, un piloto bravucón y dos droides para salvar la galaxia del Imperio.',
      image: 'assets/images/imagen3.jpg'
    },
    {
      title: 'El Caballero Oscuro',
      description: 'Batman debe enfrentarse al Joker, un criminal psicópata que siembra el caos en Gotham City.',
      image: 'assets/images/imagen4.jpg'
    },
    {
      title: 'Pulp Fiction',
      description: 'Una serie de historias entrelazadas sobre el crimen en Los Ángeles, contadas en un orden no lineal.',
      image: 'assets/images/imagen5.jpg'
    },
    {
      title: 'Titanic',
      description: 'Un joven artista y una mujer de alta sociedad se enamoran a bordo del malogrado RMS Titanic.',
      image: 'assets/images/imagen6.jpg'
    },
    {
      title: 'Forrest Gump',
      description: 'La vida extraordinaria de Forrest Gump, un hombre con una inteligencia limitada pero con un corazón grande.',
      image: 'assets/images/imagen7.jpg'
    },
    {
      title: 'Matrix',
      description: 'Un hacker descubre la verdad sobre su realidad y su papel en la guerra contra sus controladores.',
      image: 'assets/images/imagen8.jpg'
    }
  ];
}
