import 'package:flutter/material.dart';
import 'note.dart';
import 'notas.dart';
import 'package:intl/intl.dart';


class NoteMaker extends StatefulWidget {
  //const MeditationList({Key? key, required this.title}) : super(key: key);
  

  @override
  _NoteMaker createState() => _NoteMaker();
}
class _NoteMaker extends State<NoteMaker> {
  final titleController = TextEditingController();
  final textController = TextEditingController(); 

  @override
  void initState() {
      super.initState();
      
  }

  @override
  void dispose() {
      
      super.dispose();
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(),
    body: Column(
        children: <Widget>[
        Expanded(
          
          child: Column(
            children: [Card(
              color: Colors.white10,
              child: Expanded(child:TextField(
              decoration: InputDecoration(border: InputBorder.none),
              autofocus: true,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: titleController,
              ),)
            ),
        Card(
          
          child: Expanded(child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
              autofocus: true,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: textController,
              ),)
        ),],
          ),
        ),
        Card(
                  margin: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                  color: Colors.lightBlueAccent,
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    
                      child: TextButton(
                          onPressed: (){
                            
                            final now = new DateTime.now();
                            String formatter = DateFormat('dd/MM/yyyy').format(now);
                             // 2016-01-25
                            var nnote = Note(title: titleController.text,date:formatter, color: Colors.blue, content: textController.text);
                            Notas.addNote(nnote);
                            Navigator.pop(context);
                             
                                
                            
                          },
                          child: Text("Guardar",),
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
    ],
    ));
  }
}