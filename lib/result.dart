import 'package:flutter/material.dart';

//import 'C_TextWidget.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result({this.totalScore});

  String get result {
    String resultText;
    if (totalScore >= 50 && totalScore <= 100) {
      resultText = 'you are better but not enough';
      print(totalScore);
    } else if (totalScore < 50) {
      resultText = 'Suggest to take retest';
      print(totalScore);
    } else {
      resultText = 'you are too badass scored more than average';
      print(totalScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        result,
        style: TextStyle(
          fontSize: 23,
          color: Colors.red,
        ),
      ),
    );
  }
}
