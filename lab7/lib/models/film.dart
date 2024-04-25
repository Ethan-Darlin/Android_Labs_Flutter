import 'actor.dart';
import 'director.dart';
import 'film_entity.dart';
import 'genre.dart';

class Film extends FilmEntity {
  int year;
  List<Actor> actors;
  Director director;
  Genre genre;

  Film({required String title, required String description, required this.year, required this.actors, required this.director, required this.genre})
      : super(title: title, description: description);
}
