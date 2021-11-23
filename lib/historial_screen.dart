import 'package:flutter/material.dart';

import 'event.dart';
import 'eventos.dart';
import 'med.dart';
import 'meditaciones.dart';
import 'notas.dart';
import 'note.dart';

final hv = <String>["Meditaciones", "Eventos", "Notas"];

class HistorialScreen extends StatelessWidget {
  HistorialScreen({Key? key}) : super(key: key);

  final List<Event> ev = Eventos.getEventos();
  final List<Meditation> med = Meditaciones.getMeditaciones();
  final List<Note> nt = Notas.getNotas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Historial")),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                hv[0],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.grey,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: med.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      showAlertMeditaciones(context, med[index].title,
                          med[index].bpm, med[index].stars);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: med[index].color,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 0.3))
                              ]),
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      med[index].title,
                                      style: const TextStyle(
                                          fontSize: 16.0, color: Colors.white),
                                    ),
                                    const Spacer(),
                                    Text(
                                      med[index].date,
                                      style: const TextStyle(
                                          fontSize: 16.0, color: Colors.white),
                                    )
                                  ]))),
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                hv[1],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.grey,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: ev.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      showAlertEventos(context, ev[index].title, ev[index].date,
                          ev[index].tutor, ev[index].place);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: ev[index].color,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 0.3))
                              ]),
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      ev[index].title,
                                      style: const TextStyle(
                                          fontSize: 16.0, color: Colors.white),
                                    ),
                                    const Spacer(),
                                    Text(
                                      ev[index].date,
                                      style: const TextStyle(
                                          fontSize: 16.0, color: Colors.white),
                                    )
                                  ]))),
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                hv[2],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.grey,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: nt.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      showAlertNotas(
                          context, nt[index].title, nt[index].content);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: nt[index].color,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 0.3))
                              ]),
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      nt[index].title,
                                      style: const TextStyle(
                                          fontSize: 16.0, color: Colors.white),
                                    ),
                                    const Spacer(),
                                    Text(
                                      nt[index].date,
                                      style: const TextStyle(
                                          fontSize: 16.0, color: Colors.white),
                                    )
                                  ]))),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

showAlertMeditaciones(BuildContext context, String t, int bpm, int str) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(t),
    content: SizedBox(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(TextSpan(children: [
            const TextSpan(
                text: 'BPM: ', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: bpm.toString())
          ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 24.0,
              ),
              Text(str.toString())
            ],
          )
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

showAlertEventos(
    BuildContext context, String t, String d, String tutor, String place) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(t),
    content: SizedBox(
      height: 80,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text.rich(TextSpan(children: [
          const TextSpan(
              text: 'Fecha: ', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: d)
        ])),
        Text.rich(TextSpan(children: [
          const TextSpan(
              text: 'Tutor: ', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: tutor)
        ])),
        Text.rich(TextSpan(children: [
          const TextSpan(
              text: 'Lugar: ', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: place)
        ])),
      ]),
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

showAlertNotas(BuildContext context, String t, String con) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(t),
    content: Text(con),
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
