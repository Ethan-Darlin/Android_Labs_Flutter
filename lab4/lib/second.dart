import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/img_2.png', // Убедитесь, что путь к вашей картинке верный
              width: 50, // Вы можете настроить размер картинки по вашему усмотрению
              height: 50,
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 3.0,
            child: Image.asset(
              "assets/img_18.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3.0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.translate(
                              offset: Offset(0, -5), // Смещение вверх на 5 пикселей
                              child: Text(
                                '\$',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            Text(
                              '129',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        Transform.translate(
                          offset: Offset(-40, 0), // Смещение текста "39 reviews" вправо и немного вниз
                          child: Text(
                            '39 reviews',
                            style: TextStyle(fontSize: 14,color: Colors.orange), // Стиль для текста "reviews"
                          ),
                        ),
                        // Заменяем слайдер на своеобразный нерабочий слайдер с блоком-крёжечком
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 100, // Ширина прямоугольного блока
                              height: 30, // Высота прямоугольного блока
                              decoration: BoxDecoration(
                                color: Colors.grey[300], // Цвет прямоугольного блока
                                borderRadius: BorderRadius.circular(15), // Скругление углов
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20), // Добавляем отступ слева
                                  child: Text(
                                    'CART',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              right: 0,
                              child: Container(
                                width: 30, // Ширина круга
                                height: 30, // Высота круга
                                decoration: BoxDecoration(
                                  color: Colors.grey[300], // Цвет круга
                                  shape: BoxShape.circle, // Форма круга
                                ),
                                child: Center(
                                  child: Container(
                                    width: 40, // Ширина крёжечки
                                    height: 40, // Высота крёжечки
                                    decoration: BoxDecoration(
                                      color: Color(0xFF474173), // Цвет крёжечки
                                      shape: BoxShape.circle, // Форма крёжечки
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                          fontSize: 20, // Размер шрифта для символа "+"
                                          color: Colors.white, // Цвет текста
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) => Stack(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/img_15.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              index == 0 ? "10 watt" : index == 1 ? "30 kwh" : index == 2 ? "10 sizes" : "12 colors",
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Выравниваем все дочерние элементы по левому краю
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,top: 15), // Добавляем отступ слева
                        child: Row( // Используем Row для расположения текста и изображения рядом
                          children: [
                            Text(
                              'Rado Lamp',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Expanded( // Используем Expanded, чтобы изображение прижималось к правому краю
                              child: Align(
                                alignment: Alignment.centerRight, // Выравниваем изображение по центру справа
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8), // Добавляем отступ справа
                                  child: Image.asset(
                                    "assets/img_10.png", // Путь к вашему изображению
                                    width: 25, // Вы можете настроить размер изображения
                                    height: 25,
                                    fit: BoxFit.cover, // Используем BoxFit.cover, чтобы изображение заполнило всё доступное пространство
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10), // Добавляем небольшой отступ между текстом и изображением
                          ],
                        ),
                      ),
                      SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,top: 15), // Добавляем отступ слева
                        child: Text(
                          'This is a description of the Rado Lamp.This is a description of the Rado Lamp.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,top: 15), // Добавляем отступ слева
                        child: Text(
                          'Colors',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Остальные элементы
                    ],
                  ),
                  SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) => Column(
                      children: [
                        Builder(builder: (BuildContext context) {
                          if (index < 3) {
                            return Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("assets/img_17.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          } else {
                            return Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFF474173), // Устанавливаем фоновый цвет для последнего объекта
                              ),
                              child: Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 30, // Размер текста
                                    color: Colors.white, // Цвет текста
                                  ),
                                ),
                              ),
                            );
                          }
                        }),
                      ],
                    )),
                  ),



                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage(title: '')),
                            );
                          },
                          icon: Padding(
                            padding: EdgeInsets.only(left: 7.0), // Задайте отступы внутри кнопки
                            child: Icon(Icons.close),
                          ),
                          label: Text(''), // Если не нужен текст, оставьте его пустым
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            side: MaterialStateProperty.all(BorderSide(color: Colors.black.withOpacity(0.5), width: 1)),
                            minimumSize: MaterialStateProperty.all(Size(60, 60)),
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                            textStyle: MaterialStateProperty.all(TextStyle(fontWeight: FontWeight.w400)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 15),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Buy Now'),
                        style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all(Colors.orange), // Фон кнопки
                          foregroundColor: MaterialStateProperty.all(Colors.white), // Цвет текста
                          minimumSize: MaterialStateProperty.all(Size(250, 60)), // Минимальный размер кнопки
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10, vertical: 10)), // Отступы внутри кнопки
                          textStyle: MaterialStateProperty.all(TextStyle(fontWeight: FontWeight.w400, fontSize: 22)), // Стиль текста
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
