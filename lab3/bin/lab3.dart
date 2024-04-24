import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'class.dart';
import 'function.dart';

Future<void> main() async {

  Stream<int> countStream(int to) async* {
    for (int i = 1; i <= to; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }
  await for (var i in countStream(5)) {
    print(i);
  }
  AdminUser us = AdminUser(userId: "1", username: "Ivan", profileImageUrl: "hhtp", isAdmin: true);
  us.study();
  Chat ct = Chat();
  ct.chatting();
  ct.fetchSomeData();

  // Создание Single Subscription Stream
  StreamController<int> singleController = StreamController<int>();

  // Добавление слушателя к потоку
  StreamSubscription<int> subscription = singleController.stream.listen(
        (data) {
      print('Получено: $data');
    },
  );

  // Добавление данных в поток
  singleController.add(1);
  singleController.add(2);
  singleController.add(3);

  // Закрытие потока
  singleController.close();
//---------------------------------------------
  // Создание Broadcast Stream
  StreamController<int> broadcastController = StreamController<int>.broadcast();

  // Добавление первого слушателя к потоку
  StreamSubscription<int> subscription1 = broadcastController.stream.listen(
        (data) {
      print('Слушатель 1 Получено: $data');
    },
  );

  // Добавление второго слушателя к потоку
  StreamSubscription<int> subscription2 = broadcastController.stream.listen(
        (data) {
      print('Слушатель 2 Получено: $data');
    },
  );

  // Добавление данных в поток
  broadcastController.add(1);
  broadcastController.add(2);
  broadcastController.add(3);

  // Закрытие потока
  broadcastController.close();


  // Создание объекта User
  User user = User(userId: '123', username: 'JohnDoe');

  // Сериализация объекта User в JSON
  String jsonString = jsonEncode(user.toJson());

  // Запись JSON в файл
  final file = File('E:/file.json');
  await file.writeAsString(jsonString);
}