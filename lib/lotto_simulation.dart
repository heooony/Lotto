import 'dart:math';

class LottoSimulation {
  List<int> number = List<int>();
  int newNumber;
  bool isCorrect = true;

  LottoSimulation() {
    while (true) {
      if (number.length == 6) break;
      newNumber = Random().nextInt(45) + 1;
      for (int i = 0; i < number.length; i++) {
        if (number[i] == newNumber) {
          isCorrect = false;
          break;
        }
      }
      if (isCorrect == true) number.add(newNumber);
      isCorrect = true;
    }
    number.sort();
    while (true) {
      if (number.length == 7) break;
      newNumber = Random().nextInt(45) + 1;
      for (int i = 0; i < number.length; i++) {
        if (number[i] == newNumber) {
          isCorrect = false;
          break;
        }
      }
      if (isCorrect == true) number.add(newNumber);
      isCorrect = true;
    }
    print(number);
  }
}
