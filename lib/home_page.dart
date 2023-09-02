import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pressedLike = false;
  bool pressedMail = false;
  bool pressedCall = false;
  bool pressedRoute = false;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.network(
          "https://th.bing.com/th/id/R.527c18320a880bbd5ea2b946440d9e75?rik=7HmJ%2bfPdBEkM7g&riu=http%3a%2f%2fiteso.mx%2fimage%2fjournal%2farticle%3fimg_id%3d19709269%26t%3d1585681671152&ehk=xO%2bGG82kSNcIng58GS2OXAWzlyIqDl7%2fmts8Ql6w7kA%3d&risl=&pid=ImgRaw&r=0",
          height: 300,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EL ITESO, Universidad Jesuita de Guadalajara",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "San Pedro Tlaquepaque, Jal.",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      if (pressedLike) {
                        pressedLike = false;
                      } else {
                        pressedLike = true;
                      }
                      counter++;
                      setState(() {});
                    },
                    icon: Icon(Icons.thumb_up),
                    color: pressedLike ? Colors.indigo : Colors.black,
                  ),
                  Text("$counter")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (pressedMail) {
                              pressedMail = false;
                            } else {
                              pressedMail = true;
                            }
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(SnackBar(
                                  content: Text(
                                      "Puede contactarnos por uni@iteso.mx")));
                            setState(() {});
                          },
                          icon: Icon(Icons.mail),
                          iconSize: 50,
                          color: pressedMail ? Colors.indigo : Colors.black,
                        ),
                        Text("Correo")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (pressedCall) {
                              pressedCall = false;
                            } else {
                              pressedCall = true;
                            }
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(SnackBar(
                                  content:
                                      Text("Llamenos al numero 33 3669 3434")));
                            setState(() {});
                          },
                          icon: Icon(Icons.call),
                          iconSize: 50,
                          color: pressedCall ? Colors.indigo : Colors.black,
                        ),
                        Text("Llamada")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              if (pressedRoute) {
                                pressedRoute = false;
                              } else {
                                pressedRoute = true;
                              }
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(SnackBar(
                                    content: Text(
                                        "Ubicado en Periferico Sur 8585")));
                              setState(() {});
                            },
                            icon: Icon(Icons.roundabout_left),
                            iconSize: 50,
                            color: pressedRoute ? Colors.indigo : Colors.black),
                        Text("Ruta")
                      ],
                    )
                  ],
                ),
              ),
              Text(
                  "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara")
            ],
          ),
        )
      ],
    ));
  }
}
