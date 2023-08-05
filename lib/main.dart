import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Damo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: CardPage(),
    );
  }
}

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// First Container
          Container(
            height: 200,
            width: 500,
            // color: Colors.grey,
            child: Center(
              /// Center Container
              child: Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepPurple.shade50,
                    border: Border.all(color: Colors.grey, width: 1)),

                ///Items
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Order Id: IN12345",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                              Text(
                                "Bijay Sahoo",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                            ],
                          ),

                          SizedBox(
                            width: 50,
                          ),

                          /// Deliverd Button
                          Container(
                            height: 35,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            child: Center(
                                child: Text(
                              "Delivered",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500),
                            )),
                          )
                        ],
                      ),
                    ),

                    const Text(
                        "...................................................................................................."),

                    /// Email id & Number
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.email,
                            color: Colors.purple,
                            size: 35,
                          ),
                          Text(
                            "raj@gmail.com",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),

                          SizedBox(
                            width: 25,
                          ),

                          /// Deliverd Button
                          Icon(
                            Icons.call,
                            color: Colors.purple,
                            size: 35,
                          ),
                          Text(
                            "1234567810",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// Car
          Positioned(
              top: -10,
              left: -10,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.car_crash_sharp,
                    size: 40,
                    color: Colors.red.shade900,
                  )))
        ],
      ),
    );
  }
}
