import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:lotto/lotto_simulation.dart';
import 'package:lotto/result_screen.dart';
import 'constants.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(color2),
        body: Center(
          child: FlatButton(
            shape: CircleBorder(),
            padding: EdgeInsets.all(25.0),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultScreen();
              }));
            },
            color: Colors.white,
            child: Text(
              '생성',
              style: TextStyle(
                  fontFamily: 'Nixgone', fontSize: 30.0, color: Color(color2)),
            ),
          ),
        ),
      ),
    );
  }
}
