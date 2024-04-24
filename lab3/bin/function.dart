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