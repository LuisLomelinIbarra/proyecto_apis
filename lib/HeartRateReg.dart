import 'package:flutter/material.dart';

class HeratRateReg extends StatefulWidget {
  //const HeratRateReg({Key? key, required this.title}) : super(key: key);
  
  @override
  _HeratRateReg createState() => _HeratRateReg();
}

class _HeratRateReg extends State<HeratRateReg>{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Meditation"),
      ),
      body: Center(
        
          child: Column(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                margin: EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 30.0),
                color: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                    
                      child: 
                        
                          
                          Row(
                          children: [
                            Expanded(child: Column(
                              children: [
                                TextFormField(
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

                                SizedBox(height:10),
                                Text(
                                  "Write your heart reate",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),),
                            
                            Expanded(child: Column(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 70.0,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "BPM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
                                ),
                              ],
                            ),),
                          ],
                        ),
                      
                   
                  ),
                  ),
                

                SizedBox(height: 10,),
                Card(
                  margin: EdgeInsets.fromLTRB(16.0, 14.0, 16.0, 14.0),
                  color: Colors.lightBlueAccent,
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    
                      child: TextButton(
                          onPressed: (){
                            
                          },
                          child: Text("Save",),
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
              
              ]
            
          ),
      ),
    );
  }

}