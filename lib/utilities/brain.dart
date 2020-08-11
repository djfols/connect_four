import 'package:flutter/material.dart';

class Brain {

  int _clickNumber = 0;
  Color colorEven = Colors.yellow[600];
  Color colorOdd = Colors.red[800];
  Color discColor;
  int discNumber;

  void getDiscColor() {
    if (_clickNumber.isEven) {
      discColor = Colors.yellow[600];
    } else {
      discColor = Colors.red[600];
    }
    _clickNumber++;
    print(_clickNumber);
  }

  int getDiscNumber() {
    _clickNumber = discNumber;
    return discNumber;
  }

  resetGame() {
    _clickNumber = 0;
    discNumber = 0;
    discColor = Colors.white;
  }

  String getDiscColorName() {
    if (_clickNumber.isEven) {return 'Yellow\'s';
    } else {return 'Red\'s';}
  }


}