import 'package:flutter/cupertino.dart';

class AlphabetsProvider extends ChangeNotifier {
  String? str = "";

  changeValue(String value) {
    str = value;
    getSum();
    notifyListeners();
  }

  int getSum() {
    var s = str!.toLowerCase();
    int score = 0;
    for (int i = 0; i < s.length; i++) {
      var c = s[i].codeUnits.first - 96;
      score += c;
    }
    return (score);
  }

  int getReverseSum() {
    int x = getSum();
    return str!.length * 27 - x;
  }
}
