import 'package:flutter/material.dart';
import 'second.dart';
import 'package:battery/battery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

  Future<int> getBatteryLevel() async {
    var battery = Battery();
    int batteryLevel = await battery.batteryLevel;
    return batteryLevel;
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _batteryLevel = 0;

  final List<String> images = [
    'assets/img_2.jpg',
    'assets/img_3.jpg',
    'assets/img_4.jpg',
    'assets/img_5.jpg',
  ];
  final List<String> cost = ['129', '200', '400', '230'];

  @override
  void initState() {
    super.initState();
    getBatteryLevel().then((int batteryLevel) {
      setState(() {
        _batteryLevel = batteryLevel;
      });
    });
  }

  Future<int> getBatteryLevel() async {
    var battery = Battery();
    int batteryLevel = await battery.batteryLevel;
    return batteryLevel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color(0xFF22211F),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text(
                'Battery: $_batteryLevel%',
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/img_2.png',
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Stack(
            children: <Widget>[
              const Positioned.fill(
                child: Image(
                  image: AssetImage("assets/img_1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Positioned(
                        top: 20,
                        left: 0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 0),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 17.0),
                                  child: Text(
                                    'Kartinova',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 38.0,
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.only(left: 15.0),
                        width: 220,
                        child: Text(
                          'This beachfront Myrtle Beach resort an pool which beachfront Myrtle Beach....',
                          style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 280,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Lamp',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white.withOpacity(0.9),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              // Добавляем отступ справа
                              child: Text(
                                '1/20',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white.withOpacity(0.9),
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SecondPage(
                                      price: int.parse(cost[index]),
                                      initialCount: _counter,
                                      batteryLevel: _batteryLevel,
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: SizedBox(
                                        width: 150,
                                        height: 180,
                                        child: Image.asset(images[index],
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, right: 10.0),
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(images[index]),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 190, left: 40),
                                      child: RichText(
                                        text: TextSpan(
                                          style: DefaultTextStyle.of(context)
                                              .style,
                                          children: <InlineSpan>[
                                            WidgetSpan(
                                              child: Transform.translate(
                                                offset: const Offset(0, -5),
                                                child: const Text('\$',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.orange)),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' ${cost[index]}',
                                              style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: FloatingActionButton(
                  onPressed: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          price: int.parse(cost[0]),
                          initialCount: _counter,
                          batteryLevel: _batteryLevel,
                        ),
                      ),
                    );
                    if (result != null) {
                      setState(() {
                        _counter = result;
                      });
                    }
                  },
                  backgroundColor: Colors.orange,
                  child:
                      const Text('All', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.red,
            child: const Center(
              child: Text('Не заходи сюда больше!',
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
