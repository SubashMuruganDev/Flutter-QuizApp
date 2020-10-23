import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreDataHandler;
  final Function reset;
  Result({this.scoreDataHandler, this.reset});

  String get result {
    String resultText;
    if (scoreDataHandler >= 50 && scoreDataHandler <= 100) {
      resultText =
          'you are better but not enough,Your score is $scoreDataHandler';
    } else if (scoreDataHandler < 50) {
      resultText = 'Suggest to take retest,Your score is $scoreDataHandler';
    } else {
      resultText = 'you are too Good,Your score is $scoreDataHandler';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            result,
            style: TextStyle(
              fontSize: 20,
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
