import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color iconColorA = Colors.black;
  Color iconColorB = Colors.black;
  Color iconColorC = Colors.black;
  Color iconColorD = Colors.black;

  bool buttonA = false;
  bool buttonB = false;
  bool buttonC = false;
  bool buttonD = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MC flutter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Flutter McFlutter",
                                style: TextStyle(fontSize: 23)),
                            Text("Experienced App Developer")
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("123 Main Street"),
                          Text("(415) 555-0198")
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              if (buttonA == false) {
                                setState(() {
                                  iconColorA = Colors.indigo;
                                });
                                buttonA = true;
                              } else {
                                setState(() {
                                  iconColorA = Colors.black;
                                });
                                buttonA = false;
                              }
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                    SnackBar(content: Text("Accesibilidad")));
                            },
                            icon: Icon(Icons.accessibility, color: iconColorA)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (buttonB == false) {
                                  setState(() {
                                    iconColorB = Colors.indigo;
                                  });
                                  buttonB = true;
                                } else {
                                  setState(() {
                                    iconColorB = Colors.black;
                                  });
                                  buttonB = false;
                                }
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(
                                      SnackBar(content: Text("Timer")));
                              });
                            },
                            icon: Icon(Icons.timer, color: iconColorB)),
                        IconButton(
                            onPressed: () {
                              if (buttonC == false) {
                                setState(() {
                                  iconColorC = Colors.indigo;
                                });
                                buttonC = true;
                              } else {
                                setState(() {
                                  iconColorC = Colors.black;
                                });
                                buttonC = false;
                              }
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                    SnackBar(content: Text("Apple")));
                            },
                            icon: Icon(Icons.phone_iphone, color: iconColorC)),
                        IconButton(
                            onPressed: () {
                              if (buttonD == false) {
                                setState(() {
                                  iconColorD = Colors.indigo;
                                });
                                buttonD = true;
                              } else {
                                setState(() {
                                  iconColorD = Colors.black;
                                });
                                buttonD = false;
                              }
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                    SnackBar(content: Text("Android")));
                            },
                            icon: Icon(Icons.phone_android, color: iconColorD))
                      ],
                    )
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
