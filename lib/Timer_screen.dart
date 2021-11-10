import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:timer/widget/button_widget.dart';
import 'package:just_audio/just_audio.dart';

class TimerScreen extends StatefulWidget {
  //const TimerScreen({Key? key, required this.title}) : super(key: key);

  @override
  _TimerScreen createState() => _TimerScreen();
}

class _TimerScreen extends State<TimerScreen> {
  
  AudioPlayer ap = AudioPlayer();
  static int maxSeconds = 100;
  bool started = false;
  
  @override
  void initState() {
    super.initState();
    ap = AudioPlayer();
    
    // Set a sequence of audio sources that will be played by the audio player.
    ap
        .setAudioSource(
          
          AudioSource.uri(Uri.parse('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3')),
    )
        .catchError((error) {
      // catch load errors: 404, invalid url ...
      print("An error occured $error");
    });
    
    
  }

  @override
  void dispose() {
    ap.dispose();
    super.dispose();
  }
  
  
  
  void musicStart() async{
    var dur = await ap.setUrl('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
    int d = dur!.inSeconds;
    maxSeconds = d;
    seconds = d;
    log(d.toString());
    
  }
  int seconds = maxSeconds;
  Timer? timer;

  void startTimer(){
    
    timer = Timer.periodic(Duration(seconds: 1), (_) { 
      if(seconds > 0){
        setState( () => seconds--);
      }else{
        ap.pause();
        pauseTimer();
      }
     });
  }

  void pauseTimer(){
    
    setState( () =>timer?.cancel());
    //timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        //title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTimer(),
            const SizedBox(height: 40,),
            buildButtons(),
          ],
        ),
      ),
    );
    
  }

  Widget buildButtons() {
        final isRunning = timer == null ? false : timer!.isActive;
        final finishedTime = seconds <= 0;
        if (seconds == maxSeconds){
          return ButtonWidget(
              text: 'Start Timer!',
              onClicked: () {
                started = true;
                musicStart();
                startTimer();
                ap.play();
              },
            );
        }else
          if (!finishedTime){
                return  ButtonWidget(
                text: isRunning ? 'Pause' : 'Resume',
                bgColor: Colors.blueGrey, 
                onClicked: () {
                  if(timer!.isActive) { 
                    
                    pauseTimer(); 
                    ap.pause();
                  }else{ 
                    startTimer();
                    ap.play();  
                  }

                }, 
              );

              
          }else{
            return Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(
                      text: 'Finished',
                      bgColor: Colors.blueGrey, 
                      onClicked: () {
                        if(timer!.isActive) { 
                          
                          pauseTimer(); 
                        }else{ 
                          startTimer();  
                        }
                      },),
                    const SizedBox(width: 12,),
                    ButtonWidget(text: 'Next', onClicked: (){})
                  ],
                ) 
                ;
          }

        
          
  }

  Widget buildTimer() => SizedBox(
    width: 200, height: 200,
    child: Stack(fit: StackFit.expand,
      children: [
        CircularProgressIndicator(
          value: seconds/maxSeconds,
          valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
          strokeWidth: 12,
          backgroundColor: Colors.grey,
        ),
        Center(child: buildTime()),
      ],
    )
  );

  Widget buildTime(){
    return started ? Text(
      '$seconds',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey,
        fontSize: 80,
      ),
    ) : Text(
      'Ready',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey,
        fontSize: 35,
      ),
    );
  }

}
