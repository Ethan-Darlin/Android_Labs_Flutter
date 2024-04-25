import 'film_entity.dart';

class Director extends FilmEntity {
  String birthYear;

  Director({required String title, required String description, required this.birthYear})
      : super(title: title, description: description);
}
