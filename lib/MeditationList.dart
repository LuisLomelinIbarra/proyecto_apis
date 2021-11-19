
import 'package:flutter/material.dart';
import 'package:timer/HeartRateReg.dart';

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
                          builder: (context) => HeratRateReg(),
                          // Pass the arguments as part of the RouteSettings. The
                          // DetailScreen reads the arguments from these settings.
                          settings: RouteSettings(
                            arguments: meditem,
                          ),
                        ),
                      );
                    },
                    child: Text("Comenzar",),
                    style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 16),
                    ),
                  ),
                  
                ],
              ),
              SizedBox(width:30),
              //Image.network('https://picsum.photos/250?image=9', width: 100, height:100),
              Image.network(meditem.img, width: 100, height:100),

            ],
          ),
          ),
      ),
      
    );
  }
  //Por el momento pone musica en vez de meditaciones....
  List<MeditationItem> medinfo = [
      MeditationItem(title: "Espiritual Meditation",desc:"Una Meditación Guiada", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3", tipo: 'Espiritual', passed: false,img:'https://images.pexels.com/photos/1051838/pexels-photo-1051838.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
      MeditationItem(title: "Espiritual Meditation 2",desc:"Una Meditación Guiada parte 2", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3", tipo: 'Espiritual', passed: false,img:'https://images.pexels.com/photos/668353/pexels-photo-668353.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Espiritual Meditation 3",desc:"Una Meditación Guiada parte 3", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3", tipo: 'Espiritual', passed: false,img:'https://images.pexels.com/photos/268134/pexels-photo-268134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Espiritual Meditation 4",desc:"Una Meditación Guiada parte 4", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3", tipo: 'Espiritual', passed: false,img:'https://images.pexels.com/photos/158465/waterlily-pink-water-lily-water-plant-158465.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Espiritual Meditation 5",desc:"Una Meditación Guiada parte 5", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3", tipo: 'Espiritual', passed: false,img:'https://images.pexels.com/photos/355863/pexels-photo-355863.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),

      MeditationItem(title: "Gratitude Meditation",desc:"Una Meditación Guiada", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3", tipo: 'Gratitud', passed: false,img:'https://images.pexels.com/photos/775417/pexels-photo-775417.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Gratitude Meditation 2",desc:"Una Meditación Guiad parte 2", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3", tipo: 'Gratitud', passed: false,img:'https://images.pexels.com/photos/1051449/pexels-photo-1051449.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Gratitude Meditation 3",desc:"Una Meditación Guiad parte 3", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3", tipo: 'Gratitud', passed: false,img:'https://images.pexels.com/photos/372281/pexels-photo-372281.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Gratitude Meditation 4",desc:"Una Meditación Guiad parte 4", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3", tipo: 'Gratitud', passed: false,img:'https://images.pexels.com/photos/737586/pexels-photo-737586.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Gratitude Meditation 5",desc:"Una Meditación Guiad parte 5", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3", tipo: 'Gratitud', passed: false,img:'https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),

      MeditationItem(title: "Body Scan Meditation",desc:"Una Meditación Guiada", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3", tipo: 'Visualización', passed: false,img:'https://images.pexels.com/photos/2597205/pexels-photo-2597205.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Body Scan Meditation 2",desc:"Una Meditación Guiada parte 2", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3", tipo: 'Visualización', passed: false,img:'https://images.pexels.com/photos/359564/pexels-photo-359564.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Body Scan Meditation 3",desc:"Una Meditación Guiada parte 3", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3", tipo: 'Visualización', passed: false,img:'https://images.pexels.com/photos/3188/love-romantic-bath-candlelight.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      

      MeditationItem(title: "Estiramientos",desc:"Una Meditación Guiada", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3", tipo: 'Movimiento', passed: false,img:'https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Estiramientos 2",desc:"Una Meditación Guiada parte 2", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3", tipo: 'Movimiento', passed: false,img:'https://images.pexels.com/photos/7640/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Estiramientos 3",desc:"Una Meditación Guiada parte 3", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3", tipo: 'Movimiento', passed: false,img:'https://images.pexels.com/photos/2908175/pexels-photo-2908175.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      MeditationItem(title: "Estiramientos 4",desc:"Una Meditación Guiada parte 4", resourceLoc:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3", tipo: 'Movimiento', passed: false,img:'https://images.pexels.com/photos/321576/pexels-photo-321576.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
      
  
    ];


  final tabs = ['Espiritual','Visualización','Movimiento','Gratitud'];

  @override
  Widget build(BuildContext context) {
    
    print(tabs.length);

    return DefaultTabController(length: tabs.length, 
    child: 
      Builder(builder: (BuildContext context){
        final TabController tabController = DefaultTabController.of(context)!;
        /*
          tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });

        */


        return Scaffold(
        appBar: AppBar(
            title: Text('Lista de Meditaciones'),
            bottom:  TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
            tabs: [
              for (final tab in tabs) Tab(text:tab),
            ],
          ),
        ),
        body: TabBarView(children: [
          for (final tab in tabs)
            Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child:
          ListView(
            padding: const EdgeInsets.all(8),

            children: medinfo.where((item)=> item.tipo == tab).map((meditem) =>
              
              meditationCard(meditem)
              
              ).toList(),
          )
    
        )
        ])
          
            
            
          
        
      );
      },)

    );
    
  }
}