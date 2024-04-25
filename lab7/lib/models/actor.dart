import 'film_entity.dart';

class Actor extends FilmEntity {
  String birthYear;

  Actor({required String title, required String description, required this.birthYear})
      : super(title: title, description: description);
}
