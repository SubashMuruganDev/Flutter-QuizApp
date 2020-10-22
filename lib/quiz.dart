import 'package:flutter/material.dart';

import 'C_ButtonWidget.dart';
import 'C_TextWidget.dart';

class Quiz extends StatelessWidget {
  final Function onPressed;
  final List<Map<String, Object>> questions;
  final index;

  Quiz({
    @required this.questions,
    @required this.index,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        C_TextWidget(
          questions[index]['question'],
        ),
        ...(questions[index]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return C_ButtonWidget(
            () => onPressed(answer['score']),
            answer['text'],
          );
        }).toList(),
      ],
    );
  }
}
