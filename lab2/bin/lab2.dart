class Message {
  final String sender;
  final String text;
  final DateTime timestamp;

  Message({
    required this.sender,
    required this.text,
    required this.timestamp,
  });
}

class Chat {
  final String chatId;
  final List<Message> messages;

  Chat({
    required this.chatId,
    required this.messages,
  });
}

class User {
  late final String userId;
  late final String username;
  static String profileImageUrl = "None";

  User({
    required this.userId,
    required this.username,
  });
  User.ex(String userid,String username){
    this.userId = userid;
    this.username = username;
  }
  // Геттер для fullName
  String get fullName => '$username ($userId)';

  // Сеттер для fullName
  set fullName(String value) {}
  static void printUserCount() {
    print('Hi, I(m) a static function');
  }
}
class Student{
  void study(){
    print("studnt");
}
}

class AdminUser extends User implements Student {
  final bool isAdmin;
  @override
  study() => print("implements interface");
  AdminUser({
    required String userId,
    required String username,
    required String profileImageUrl,
    required this.isAdmin,
  }) : super(userId: userId, username: username);
}



abstract class IMessageSender {
  void sendMessage(Message message);
}

abstract class IChatProvider {
  Chat getChatById(String chatId);
}

abstract class IUserProvider {
  User getUserById(String userId);
}

class MessageSender implements IMessageSender {
  @override
  void sendMessage(Message message) {
    // Реализация отправки сообщения
  }
}

class ChatProvider implements IChatProvider {
  @override
  Chat getChatById(String chatId) {
    // Реализация получения чата по идентификатору
    return Chat(chatId: chatId, messages: []);
  }
}

class UserProvider implements IUserProvider {
  @override
  User getUserById(String userId) {
    // Реализация получения пользователя по идентификатору
    return User(userId: "1", username: 'Ivan');
  }
}


// Функция с именованным параметром
void greetUser({required String name}) {
  print('Hello, $name!');
}

// Функция с параметром по умолчанию
void printSum(int a, {int b = 0}) {
  final sum = a + b;
  print('Sum: $sum');
}

// Функция с параметром типа функция
int performOperation(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

// Пример функции для умножения
int multiply(int a, int b) {
  return a * b;
}
//Function with exp
void dell(){
  try {
    int b = 5;
    int x = 0;
    int sum = b ~/ x;
    print(sum);
  }
  catch (e) {
  print("Возникло исключение: $e");
  }
  print("Завершение программы");
}

// Функция с необязательным параметром
void printPerson(String name, [int age = 22]) {
  print('Name: $name, Age: $age');
}


class CustomException implements Exception {
  final String message;

  CustomException(this.message);

  @override
  String toString() => 'CustomException: $message';
}


void main() {
  //Exeption
  dell();
  //Custom Exeption
  try {
    throw CustomException('Это мое собственное исключение');
  } catch (e) {
    print('Поймано исключение: $e');
  }
  //-----------------------------------------------
  // Вызов функции с именованным параметром
  greetUser(name: 'Ivan');
  // Вызов функции с параметром по умолчанию
  printSum(5, b: 3);
  // Вызов функции с параметром типа функция
  final result = performOperation(10, 5, multiply);
  print('Result: $result'); // Выведет: Result: 50
  // Вызов функции с необязательным параметром
  printPerson('Tom', 35); // Выведет: Name: Tom, Age: 35
  printPerson('Alice'); // Выведет: Name: Alice, Age: 22
  //-------------------------Array-----------------------------------------
  print("-------------------------------------------");
  var names = ['Alice', 'Bob', 'Charlie'];

  names.add('David');
  print('First name: ${names[0]}');
  print('Last name: ${names.last}');
  print('Number of names: ${names.length}');
  for (var name in names) {
    print('Hello, $name!');
  }
//-------------------------List----------------------------------------
  print("-------------------------------------------");
  List<String> names1 = ['Ivan', 'Dima', 'Andrew'];

  names1.add('David');
  print('Первое имя: ${names1[0]}');
  print('Последнее имя: ${names1.last}');
  print('Количество имен: ${names1.length}');

  for (var name in names1) {
    if(name == "Dima")
      break;  // break
    print('Hello, $name!');
  }
  //-----------------------------Set------------------------------------------
  print("-------------------------------------------");
  // Создание множества строк
  Set<String> names2 = {'Alice', 'Bob', 'Charlie'};

  names2.add('David');
  print('Первое имя: ${names2.first}');
  print('Количество имен: ${names2.length}');
  for (var name in names2) {
    if(name == "Bob")
      continue;   // continue
    print('Привет, $name!');
  }
  //-----------------------------------------------------------------------
  print("-------------------------------------------");

  final userProvider = UserProvider();
  final user = userProvider.getUserById('123');
  User user1 = new User(userId: "1", username: "Ivan");
  final ge = user1.userId;
  print(ge);
  User.printUserCount();
  User user2 = new User.ex("2","Ganka");

  AdminUser adm = new AdminUser(userId: "1", username: "Ivan", profileImageUrl: "-",isAdmin: false);
  adm.study();
  final chatProvider = ChatProvider();
  final chat = chatProvider.getChatById('chat123');

  final messageSender = MessageSender();
  final newMessage = Message(sender: user.userId, text: 'Hello!', timestamp: DateTime.now());
  messageSender.sendMessage(newMessage);


}