import 'package:flutter/material.dart';
import 'package:tarea_3/info_lugar.dart';
import 'package:tarea_3/item_actividad.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List<Map<String, String>> listPlaces = [
    {"name": "Cancun", "image": "assets/images/cancun.jpg", "day": "1"},
    {"name": "Vallarta", "image": "assets/images/vallarta.jpg", "day": "2"},
    {
      "name": "Playa del carmen",
      "image": "assets/images/playa_del_carmen.jpg",
      "day": "3"
    },
    {
      "name": "Aguascalientes",
      "image": "assets/images/aguascalientes.jpg",
      "day": "4"
    },
    {"name": "Mazatlan", "image": "assets/images/mazatlan.jpg", "day": "5"},
    {"name": "Cabo", "image": "assets/images/cabo.jpg", "day": "6"},
    {"name": "Cozumel", "image": "assets/images/coxumel.jpg", "day": "7"},
    {"name": "Tulum", "image": "assets/images/tulum.jpg", "day": "8"},
    {"name": "Acapulco", "image": "assets/images/acapulco.jpg", "day": "9"},
    {
      "name": "Isla mujeres",
      "image": "assets/images/isla_mujeres.jpg",
      "day": "10"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: FittedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        "assets/images/vacation.jpg",
                      ),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                            content: listPlaces[index],
                          );
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Reservacion en proceso")));
                      },
                      child: Text(
                        "Start booking",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
