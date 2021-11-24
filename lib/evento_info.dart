import 'event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventoInfo extends StatefulWidget {
  final Event selectedEv;
  const EventoInfo({Key? key, required this.selectedEv}) : super(key: key);

  @override
  EventoInfoState createState() => EventoInfoState();
}

class EventoInfoState extends State<EventoInfo> {
  bool isReg = false;

  void _register() {
    setState(() {
      isReg = !isReg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Evento")),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/img/' +
                                  widget.selectedEv.imgName +
                                  '.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned.fill(
                        child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.transparent
                          ])),
                    )),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.selectedEv.title,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 25)),
                            const SizedBox(height: 10),
                            Text(widget.selectedEv.hour,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20))
                          ],
                        ),
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
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Text(
                        widget.selectedEv.date,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '    ' + widget.selectedEv.tutor + '    ',
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          Text('Tutor',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 20))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '  ' + widget.selectedEv.place + '  ',
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          Text('Lugar',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 20))
                        ],
                      ),
                    ),
                    const SizedBox(height: 70),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Material(
                          color: isReg ? Colors.blue : Colors.red,
                          child: InkWell(
                            splashColor: isReg
                                ? Colors.blue.withOpacity(0.2)
                                : Colors.red.withOpacity(0.2),
                            highlightColor: isReg
                                ? Colors.blue.withOpacity(0.2)
                                : Colors.red.withOpacity(0.2),
                            onTap: _register,
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                isReg ? 'Registrarme' : 'Cancelar registro',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: isReg ? Colors.blue : Colors.red,
                                      width: 4)),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
