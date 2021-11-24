import 'package:timer/ChartSampleGallery.dart';
import 'package:timer/MeditationList.dart';
import 'package:timer/ver_eventos.dart';

import 'historial_screen.dart';
import 'retos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'event.dart';
import 'eventos.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  final List<Event> ev = Eventos.getEventos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            child: Stack(
              children: [
                Container(
                  height: 300,
                  color: Colors.teal,
                ),
                Positioned(
                    bottom: 30,
                    left: 10,
                    right: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey, offset: Offset(0.0, 0.3))
                          ]),
                      child: ListTile(
                          leading: const Icon(Icons.supervised_user_circle,
                              size: 50),
                          title: const Text('Usuario'),
                          subtitle: TextButton(
                            child: const Text('Cerrar sesión'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )),
                    )),
                const Positioned(
                  right: 20,
                  top: 100,
                  child: Icon(
                    Icons.circle_notifications,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 100,
                  child: GestureDetector(
                    child: const Icon(
                      Icons.construction,
                      size: 30,
                      color: Colors.white,
                    ),
                    onTap: () {
                      showAlertCons(context);
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Text(
                    'Buen Día, Usuario!',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MeditationList()),
                        );
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              color: Colors.teal,
                              width: 150,
                              height: 80,
                              child: const Center(
                                  child: Text(
                                'Meditación',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )),
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HistorialScreen()),
                        );
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              color: Colors.teal,
                              width: 150,
                              height: 80,
                              child: const Center(
                                  child: Text(
                                'Historial',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              )),
                            ),
                          )),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChartSampleGallery()),
                        );
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              color: Colors.teal,
                              width: 150,
                              height: 80,
                              child: const Center(
                                  child: Text(
                                'Estadisticas',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )),
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RetosScreen()),
                        );
                      },
                      child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              color: Colors.teal,
                              width: 150,
                              height: 80,
                              child: const Center(
                                  child: Text(
                                'Retos',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              )),
                            ),
                          )),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Eventos proximos',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerEventos()),
                              );
                            },
                            child: const Text('ver todos'))
                      ],
                    )),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ev.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(15),
                              width: 150,
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage('assets/img/' +
                                          ev[index].imgName +
                                          '.jpg'),
                                      fit: BoxFit.cover),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset.zero,
                                        blurRadius: 10)
                                  ]),
                              child: Positioned(
                                bottom: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ev[index].title,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Text(
                                        ev[index].hour,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

showAlertCons(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text('Configuración'),
    content: SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: const Text('Cambiar usuario')),
          TextButton(
              onPressed: () {}, child: const Text('Cambiar constraseña')),
        ],
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
