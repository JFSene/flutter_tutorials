import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ask Me Anything",
            style: TextStyle(
              color: Colors.blue.shade100,
            ),
          ),
          titleSpacing: 2.5,
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue,
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int randomAnswer = 1;

  void _giveRandomAnswer() {
    setState(() {
      randomAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            _giveRandomAnswer();
          },
          child: Image.asset('images/ball$randomAnswer.png'),
        ),
      ),
    );
  }
}
