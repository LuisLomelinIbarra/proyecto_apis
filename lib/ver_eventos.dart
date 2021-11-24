import 'event.dart';
import 'evento_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'eventos.dart';

class VerEventos extends StatelessWidget {
  VerEventos({Key? key}) : super(key: key);

  final List<Event> ev = Eventos.getEventos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Eventos")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(padding: EdgeInsets.all(8.0), child: Text('')),
            Expanded(
                child: ListView.builder(
                    itemCount: ev.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EventoInfo(
                                        selectedEv: ev[index],
                                      )),
                            );
                          },
                          child: Container(
                              margin: const EdgeInsets.all(20),
                              height: 200,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            'assets/img/' +
                                                ev[index].imgName +
                                                '.jpg',
                                            fit: BoxFit.cover)),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20)),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [
                                                Colors.black.withOpacity(0.8),
                                                Colors.transparent
                                              ])),
                                    ),
                                  ),
                                  Positioned(
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
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                          Text(
                                            ev[index].hour,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )));
                    }))
          ],
        ));
  }
}
