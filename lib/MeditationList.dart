
import 'package:flutter/material.dart';

import 'Timer_screen.dart';

import 'Meditation_Item.dart';

class MeditationList extends StatefulWidget {
  //const MeditationList({Key? key, required this.title}) : super(key: key);

  @override
  _MeditationList createState() => _MeditationList();
}
class _MeditationList extends State<MeditationList> {

  Widget meditationCard(meditem){
    var wid = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 14.0),
      color: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FittedBox(
            child:Row(
            
            children: [
              Column(
                
                children: <Widget>[
                  Text(
                    
                    meditem.title,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      backgroundColor: Colors.deepPurpleAccent,
                    )
                  ),
                  Text(
                    meditem.desc,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      
                    )
                  ),
                  SizedBox(height:10),
                  TextButton(
                    
                    onPressed: (){
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
                    },
                    child: Text("Start",),
                    style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  
                ],
              ),
              SizedBox(width:30),
              Image.network('https://picsum.photos/250?image=9', width: 100, height:100),

            ],
          ),
          ),
      ),
      
    );
  }
  
  List<MeditationItem> medinfo = [
      MeditationItem(title: "Gratitude Meditation",desc:"A Guided Gratitude Meditation", resourceLoc:"https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3", tipo: 1, passed: false),
      MeditationItem(title: "Gratitude Meditation 2",desc:"A Second Guided Gratitude Meditation", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3", tipo: 1, passed: false),
      MeditationItem(title: "Gratitude Meditation 3",desc:"A Third Guided Gratitude Meditation", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3", tipo: 1, passed: false),
      MeditationItem(title: "Gratitude Meditation 4",desc:"A Third Guided Gratitude Meditation", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3", tipo: 1, passed: false),
      MeditationItem(title: "Gratitude Meditation 5",desc:"A Third Guided Gratitude Meditation", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3", tipo: 1, passed: false),
  
    ];

  @override
  Widget build(BuildContext context) {
    
    var type = 2;

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        //title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:
        ListView(
          padding: const EdgeInsets.all(8),
          children: medinfo.map((meditem) =>
            
            meditationCard(meditem)
            
            ).toList(),
        )
  
      )
         
          
          
        
      
    );
    
  }
}