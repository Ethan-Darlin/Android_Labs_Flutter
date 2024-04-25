import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final int price;
  final int initialCount;
  final int batteryLevel;

  const SecondPage(
      {super.key, required this.price,
      required this.initialCount,
      required this.batteryLevel});

  @override
  // ignore: library_private_types_in_public_api
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>
    with AutomaticKeepAliveClientMixin {
  int _buyNowCount = 0;
  int _price = 0;

  @override
  void initState() {
    super.initState();
    _price = widget.price;
    _buyNowCount = widget.initialCount;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text(
              'Battery: ${widget.batteryLevel}%',
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          IconButton(
            icon: Image.asset(
              'assets/img_2.png',
              width: 50,
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
                              offset: const Offset(0, -5),
                              child: const Text(
                                '\$',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            Text(
                              '$_price',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Transform.translate(
                          offset: const Offset(-40, 0),
                          child: const Text(
                            '39 reviews',
                            style:
                                TextStyle(fontSize: 14, color: Colors.orange),
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Text(
                                    'CART',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF474173),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
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
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        4,
                        (index) => Stack(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage("assets/img_15.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: -2,
                                  right: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      index == 0
                                          ? "10 watt"
                                          : index == 1
                                              ? "30 kwh"
                                              : index == 2
                                                  ? "10 sizes"
                                                  : "12 colors",
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                  ),
                  const SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 15),
                        child: Row(
                          children: [
                            const Text(
                              'Rado Lamp',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Image.asset(
                                    "assets/img_10.png",
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 15),
                        child: Text(
                          'This is a description of the Rado Lamp.This is a description of the Rado Lamp.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 15),
                        child: Text(
                          'Colors',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        4,
                        (index) => Column(
                              children: [
                                Builder(builder: (BuildContext context) {
                                  if (index < 3) {
                                    return Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: const DecorationImage(
                                          image:
                                              AssetImage("assets/img_17.jpg"),
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
                                        color: const Color(0xFF474173),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                }),
                              ],
                            )),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context, _buyNowCount);
                          },
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 7.0),
                            child: Icon(Icons.close),
                          ),
                          label: const Text(''),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            side: MaterialStateProperty.all(BorderSide(
                                color: Colors.black.withOpacity(0.5),
                                width: 1)),
                            minimumSize:
                                MaterialStateProperty.all(const Size(60, 60)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10)),
                            textStyle: MaterialStateProperty.all(
                                const TextStyle(fontWeight: FontWeight.w400)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _buyNowCount++;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            minimumSize:
                                MaterialStateProperty.all(const Size(250, 60)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10)),
                            textStyle: MaterialStateProperty.all(
                                const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 22)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Buy Now'),
                              const SizedBox(width: 5),
                              Text('$_buyNowCount'),
                            ],
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
