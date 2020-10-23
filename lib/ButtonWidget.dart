import 'package:flutter/material.dart';

import 'TextWidget.dart';

class ButtonWidget extends StatelessWidget {
  final Function dataHandler;
  final String answerText;
  ButtonWidget(
    this.dataHandler,this.answerText
  ); //constructor reciving function

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[500],
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: TextWidget(this.answerText),
        onPressed: dataHandler,
      ),
    );
  }
}
