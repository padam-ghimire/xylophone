import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int id){
      final player = new AudioCache();
      player.play('note$id.wav');
  }

  Expanded buidKey(Color color,int id){
   return Expanded(
        child: FlatButton(
        color:color,
        onPressed: (){
          playSound(id);
      },
    child: null,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             buidKey(Colors.red,1),
             buidKey(Colors.green,2),
             buidKey(Colors.blue,3),
             buidKey(Colors.orange,4),
             buidKey(Colors.purple,5),
             buidKey(Colors.teal,6),
             buidKey(Colors.yellow,7)
            ],
          ),
        ),
      ),
    );
  }
}
