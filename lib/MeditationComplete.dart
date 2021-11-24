//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class MeditationComplete extends StatefulWidget {
  

  @override
  _MeditationComplete createState() => _MeditationComplete();
}
class _MeditationComplete extends State<MeditationComplete> {
  
  double meditationRating = 3;
  String getRate(){
    
      switch(meditationRating.toInt()){
        case 0:
          return '¡Muy malo!';
        case 1:
          return 'Malo';
        case 2:return 'Decente';
        case 3:return 'Bueno';
        case 5:return '¡Excelente!';
        default: return 'Decente';
      }

  }
  
  String getMessage(){
    //Aqui se agruega la logica para sacar frases de una db
    return '\"La meditación de Mindfulness logra un profundo estado de conciencia libre para prestar atención a lo que acontece en nuestro interior en cada momento\".';

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        title: Text("Meditación Completada"),
      ), 
      //Para el rating vamos a usar un drawer

      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
            elevation: 5.0,
            color: Colors.lightBlueAccent,
            child:Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                'MEDITACIÓN COMPLETADA',
                textAlign: TextAlign.center,
                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
              ),
            ),
            ),
            SizedBox(height: 20,),
            Text(
              '¡Excelente Trabajo!',
              style: TextStyle(
                fontSize: 20,
              ),
              
            ),
            SizedBox(height: 15,),
            Card(
              margin: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
              elevation: 10.0,
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(getMessage()),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SizedBox(width: 150,height: 150,
              child: Card(
                  color: Colors.blueAccent,
                  margin: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                  child: InkWell(
                    onTap: (){
                      showModalBottomSheet<void>(
                        context: context, 
                        builder: (BuildContext context){
                            return Container(
                              height: 250,
                              color: Colors.white,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                 RatingBar.builder(
                                  initialRating: 3,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    switch (index) {
                                        case 0:
                                          return Icon(
                                              Icons.sentiment_very_dissatisfied,
                                              color: Colors.red,
                                          );
                                        case 1:
                                          return Icon(
                                              Icons.sentiment_dissatisfied,
                                              color: Colors.redAccent,
                                          );
                                        case 2:
                                          return Icon(
                                              Icons.sentiment_neutral,
                                              color: Colors.amber,
                                          );
                                        case 3:
                                          return Icon(
                                              Icons.sentiment_satisfied,
                                              color: Colors.lightGreen,
                                          );
                                        case 4:
                                            return Icon(
                                              Icons.sentiment_very_satisfied,
                                              color: Colors.green,
                                            );
                                        default:
                                          return Icon(
                                              Icons.sentiment_very_satisfied,
                                              color: Colors.green,
                                            );
                                    }
                                  },
                                  onRatingUpdate: (rating) {
                                    // ignore: avoid_print
                                    print(rating);
                                    meditationRating = rating;
                                    
                                    
                                  },
                                ),
                                
                          
                            SizedBox(height: 10,),
                            Text( '¿Cómo sentiste la meditación?',
                            style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 20,),
                            ElevatedButton(
                              child: const Text('¡Listo!'),
                              onPressed: () => Navigator.pop(context),
                            )],
                                ),
                              ),
                            );
                        });
                      
                    },
                    child: Padding(
                    padding: const EdgeInsets.all(10.0), 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sentiment_satisfied_alt,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          '¿Cómo te sientes?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                    ],
                    ),
                  ),
                  ),
                ),
              ),
                
                SizedBox(width: 10,),
                SizedBox(width: 150,height: 150,
                child: Card(
                  color: Colors.blueAccent,
                  margin: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                  child:InkWell(
                    onTap: (){

                    },
                    
                    child: Padding(
                    padding: const EdgeInsets.all(10.0), 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.assignment,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Tomar Nota',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                    ],
                    ),
                  ),
                  ),
                ),),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 50,
              width: 200,
              child: TextButton(
              
              style: TextButton.styleFrom(
                backgroundColor: Colors.amberAccent,

              ),
              onPressed: (){

              }, 
            child: 
              Text(
                'Finalizar',
                style: TextStyle(fontSize: 20,
                  color: Colors.blueGrey,
                ),
                )
            )
            )
          
        ],
      ),
    ),
    );
  }
  
}