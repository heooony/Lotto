import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:lotto/lotto_simulation.dart';
import 'package:lotto/result_screen.dart';
import 'constants.dart';
import 'lotto_simulation.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool selected = true;
  int makeTry = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(color2),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (makeTry > 0) makeTry--;
                      });
                    },
                    child: Icon(
                      Icons.arrow_circle_down_sharp,
                      color: Color(color1),
                      size: 50.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    makeTry.toString(),
                    style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'Nixgone',
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (makeTry < 7) makeTry++;
                      });
                    },
                    child: Icon(
                      Icons.arrow_circle_up_sharp,
                      color: Color(color1),
                      size: 50.0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: [
                FlatButton(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(25.0),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ResultScreen(makeTry);
                    }));
                  },
                  color: Colors.white,
                  child: Text(
                    '생성',
                    style: TextStyle(
                        fontFamily: 'Nixgone',
                        fontSize: 30.0,
                        color: Color(color2)),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
