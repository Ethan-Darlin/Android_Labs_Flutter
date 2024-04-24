
import 'package:json_annotation/json_annotation.dart';

import 'dart:core';
import 'dart:convert';

class User {
  final String userId;
  final String username;

  User({required this.userId, required this.username});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      username: json['username'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'username': username,
    };
  }
}
mixin Student {
  void study(){
    print("I'm using a mixins");
  }
}

class AdminUser extends User with Student {
  final bool isAdmin;
  AdminUser({
    required String userId,
    required String username,
    required String profileImageUrl,
    required this.isAdmin,
  }) : super(userId: userId, username: username);
}



abstract class IMessageSender {
  void sendMessage(String message);
}

mixin MessageSender implements IMessageSender {
  @override
  void sendMessage(String message) {
    print("send message");
  }
}
//определения порядка  элементов в коллекции
//для послед. доступа к элементам коллекции
//абстрактный класс, представляющий коллекцию элементов, к которым можнно получить доступ последовательно
class Chat with MessageSender implements Comparable<Chat>, Iterator<String>, Iterable<String> {
  final String authentication = "123123";
  List<String> _messages = ['Hi Ben, time to decide', 'Another message'];
  int _currentIndex = -1;

  void chatting() {
    print("Hi Ben, time to decide");
  }
  Future<String> fetchSomeData() async {
    // Имитация запроса к серверу
    var a = await Future.delayed(Duration(seconds: 2));
    print(a);
    return "Данные получены";
  }

  @override
  int compareTo(Chat other) {
    return authentication.compareTo(other.authentication);
  }

  @override
  bool moveNext() {
    if (_currentIndex < _messages.length - 1) {
      _currentIndex++;
      return true;
    }
    return false;
  }

  @override
  String get current {
    if (_currentIndex < 0 || _currentIndex >= _messages.length) {
      throw StateError('No current element');
    }
    return _messages[_currentIndex];
  }

  @override
  Iterator<String> get iterator => this;

  // Реализация метода map для Iterable<String>
  @override
  Iterable<T> map<T>(T Function(String) f) {
    return _messages.map(f);
  }

  // Реализация остальных методов интерфейса Iterable<String>
  @override
  bool contains(Object? element) {
    return _messages.contains(element);
  }

  @override
  String elementAt(int index) {
    return _messages.elementAt(index);
  }

  @override
  String get first {
    return _messages.first;
  }

  @override
  void forEach(void Function(String element) action) {
    _messages.forEach(action);
  }

  @override
  bool get isEmpty {
    return _messages.isEmpty;
  }

  @override
  bool get isNotEmpty {
    return _messages.isNotEmpty;
  }

  @override
  String get last {
    return _messages.last;
  }

  @override
  int get length {
    return _messages.length;
  }

  @override
  String get single {
    return _messages.single;
  }

  @override
  Iterable<String> skipWhile(bool Function(String value) test) {
    return _messages.skipWhile(test);
  }

  @override
  Iterable<String> takeWhile(bool Function(String value) test) {
    return _messages.takeWhile(test);
  }

  @override
  Iterable<T> whereType<T>() {
    return _messages.whereType<T>();
  }

  @override
  Iterable<String> followedBy(Iterable<String> other) {
    return _messages.followedBy(other);
  }

  @override
  String reduce(String Function(String value, String element) combine) {
    return _messages.reduce(combine);
  }

  @override
  Iterable<String> where(bool Function(String element) test) {
    return _messages.where(test);
  }
  // Реализация остальных методов интерфейса Iterable<String>
  @override
  bool any(bool Function(String element) test) {
    return _messages.any(test);
  }

  @override
  Iterable<R> cast<R>() {
    return _messages.cast<R>();
  }

  @override
  bool every(bool Function(String element) test) {
    return _messages.every(test);
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(String element) toElements) {
    return _messages.expand(toElements);
  }

  @override
  String firstWhere(bool Function(String element) test, {String Function()? orElse}) {
    return _messages.firstWhere(test, orElse: orElse);
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, String element) combine) {
    return _messages.fold(initialValue, combine);
  }

  @override
  String join([String separator = ""]) {
    return _messages.join(separator);
  }

  @override
  String lastWhere(bool Function(String element) test, {String Function()? orElse}) {
    return _messages.lastWhere(test, orElse: orElse);
  }

  @override
  String singleWhere(bool Function(String element) test, {String Function()? orElse}) {
    return _messages.singleWhere(test, orElse: orElse);
  }

  @override
  Iterable<String> skip(int count) {
    return _messages.skip(count);
  }

  @override
  Iterable<String> take(int count) {
    return _messages.take(count);
  }

  @override
  List<String> toList({bool growable = true}) {
    return _messages.toList(growable: growable);
  }

  @override
  Set<String> toSet() {
    return _messages.toSet();
  }
}










