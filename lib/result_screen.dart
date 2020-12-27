import 'package:flutter/material.dart';
import 'constants.dart';
import 'lotto_simulation.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen(this.times);
  final times;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(color1),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < widget.times; i++)
                  Card(
                    elevation: 10.0,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CardWidget(),
                    ),
                  ),
                Card(
                  elevation: 10.0,
                  child: FlatButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '다시 생성하세요',
                        style: TextStyle(fontFamily: 'Nixgone', fontSize: 30.0),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LottoSimulation lotto = LottoSimulation();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LottoNumber(
          number: 0,
          lotto: lotto,
        ),
        LottoNumber(
          number: 1,
          lotto: lotto,
        ),
        LottoNumber(
          number: 2,
          lotto: lotto,
        ),
        LottoNumber(
          number: 3,
          lotto: lotto,
        ),
        LottoNumber(
          number: 4,
          lotto: lotto,
        ),
        LottoNumber(
          number: 5,
          lotto: lotto,
        ),
        Container(
          child: Text(
            '+',
            style: TextStyle(
                fontSize: 20.0, fontFamily: 'Nixgone', color: Color(color3)),
          ),
        ),
        LottoNumber(number: 6, lotto: lotto),
      ],
    );
  }
}

class LottoNumber extends StatelessWidget {
  LottoNumber({this.number, this.lotto});
  final number;
  final lotto;

  MaterialColor buildColor() {
    if (lotto.number[number] > 0 && lotto.number[number] <= 10)
      return Colors.yellow;
    else if (lotto.number[number] > 10 && lotto.number[number] <= 20)
      return Colors.blue;
    else if (lotto.number[number] > 20 && lotto.number[number] <= 30)
      return Colors.red;
    else if (lotto.number[number] > 40 && lotto.number[number] <= 45)
      return Colors.green;
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Text(
        '${lotto.number[number]}',
        style: TextStyle(
            shadows: [
              Shadow(
                blurRadius: 20.0,
                color: Colors.black,
                offset: Offset(0.0, 0.0),
              ),
            ],
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'Nixgone',
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: (buildColor() != null) ? buildColor() : Colors.black,
      radius: 20.0,
    );
  }
}
