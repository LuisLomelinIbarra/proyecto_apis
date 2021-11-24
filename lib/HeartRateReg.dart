import 'package:flutter/material.dart';
import 'package:timer/Timer_screen.dart';
import 'MeditationComplete.dart';
import 'Meditation_Item.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HeratRateReg extends StatefulWidget {
  //const HeratRateReg({Key? key, required this.title}) : super(key: key);

  @override
  _HeratRateReg createState() => _HeratRateReg();
}

class _HeratRateReg extends State<HeratRateReg> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    MeditationItem meditem =
        ModalRoute.of(context)!.settings.arguments as MeditationItem;
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro Ritmo Cardiaco"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Card(
            margin: EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 30.0),
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: myController,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 28,
                          ),
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: '',
                          ),
                          cursorColor: Colors.white,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "REGISTRA TU RITMO CARDICAO ACTUAL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "BPM",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            margin: EdgeInsets.fromLTRB(16.0, 14.0, 14.0, 14.0),
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  //TimerScreen

                  if (!meditem.passedMeditation) {
                    meditem.heartrate_before = myController.text;
                    if (meditem.heartrate_before != '') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TimerScreen(),
                          // Pass the arguments as part of the RouteSettings. The
                          // DetailScreen reads the arguments from these settings.
                          settings: RouteSettings(
                            arguments: meditem,
                          ),
                        ),
                      );
                    } else {
                      Fluttertoast.showToast(
                          msg: "Ingresa un valor",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  } else {
                    meditem.heartrate_after = myController.text;
                    //Aquí debe de mandar a una ventana de completado
                    if (meditem.heartrate_after != '') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MeditationComplete(),
                          // Pass the arguments as part of the RouteSettings. The
                          // DetailScreen reads the arguments from these settings.
                          settings: RouteSettings(
                            arguments: meditem,
                          ),
                        ),
                      );
                    } else {
                      Fluttertoast.showToast(
                          msg: "Ingresa un valor",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  }
                },
                child: Text(
                  "Guardar",
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
