import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  List colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.green,
    Colors.lightGreen,
    Colors.purple
  ];
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int songNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(songNumber);
        },
        color: colors[songNumber - 1],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(1),
                  buildKey(2),
                  buildKey(3),
                  buildKey(4),
                  buildKey(5),
                  buildKey(6),
                  buildKey(7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
