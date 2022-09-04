import 'package:flutter/cupertino.dart';

class CalculateProvider extends ChangeNotifier {
  int? a = 0;
  int? b = 0;

  changeValues(String? a, String? b) {
    print("////////////");
    if (a == null || b == null) {
      print("Null has bhai");
    }
    this.a = int.parse(a!);
    this.b = int.parse(b!);

    print("////////////");
    getAnd();
    getXor();
    getOr();
    getMul();
    getSum();
    getdivision();
    getSub();
    notifyListeners();
  }

  int getXor() {
    return a! ^ b!;
  }

  int getAnd() {
    return a! & b!;
  }

  int getOr() {
    return a! | b!;
  }

  int getSum() {
    return a! + b!;
  }

  int getSub() {
    return a! - b!;
  }

  int getMul() {
    return a! * b!;
  }

  double getdivision() {
    if (b! == 0) {
      return 0;
    }
    return (a! / b!).toDouble().truncateToDouble();
  }
}
