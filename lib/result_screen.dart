import 'package:flutter/material.dart';
import 'constants.dart';
import 'lotto_simulation.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
    LottoSimulation.simulator();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(color1),
        body: Container(
          child: Row(
            children: [LottoNumber(number: 0)],
          ),
        ),
      ),
    );
  }
}

class LottoNumber extends StatelessWidget {
  LottoNumber({this.number});
  final number;

  MaterialColor buildColor() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Text(
        '${LottoSimulation.number[number]}',
        style: TextStyle(color: Colors.white, fontSize: 30.0),
      ),
      color: buildColor(),
    );
  }
}
