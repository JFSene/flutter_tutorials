import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.red.shade300, Colors.blue.shade800]),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white70,
                  child: Image(
                    image: AssetImage("images/irmaoDoJorel.png"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Irmão do Jorel",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Mobile Developer / iOS Specialist",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white70,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 250.0,
                  child: Divider(
                    color: Colors.white70,
                  ),
                ),
                Card(
                  color: Colors.transparent,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          size: 35.0,
                          color: Colors.red.shade100,
                        ),
                        title: Text(
                          "+55 41 98903-1752",
                          style: TextStyle(
                            color: Colors.red.shade100,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                ),
                Card(
                  color: Colors.transparent,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        size: 35.0,
                        color: Colors.blue.shade300,
                      ),
                      title: Text(
                        "joel.sene@hotmail.com",
                        style: TextStyle(
                          color: Colors.blue.shade300,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
