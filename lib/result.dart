import 'package:Basics/C_TextWidget.dart';
import 'package:flutter/material.dart';

//import 'C_TextWidget.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;
  Result({this.totalScore, this.reset});

  String get result {
    String resultText;
    if (totalScore >= 50 && totalScore <= 100) {
      resultText = 'you are better but not enough';
      print(totalScore);
    } else if (totalScore < 50) {
      resultText = 'Suggest to take retest';
      print(totalScore);
    } else {
      resultText = 'you are too badass';
      print(totalScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            result,
            style: TextStyle(
              fontSize: 29,
              color: Colors.black,
            ),
          ),
        ),
        FlatButton(
          onPressed: reset,
          child: Text(
            'Click to reset',
            style: TextStyle(fontSize: 25),
          ),
          textColor: Colors.blue,
        ),
      ],
    );
  }
}
