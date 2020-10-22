import 'package:flutter/material.dart';

import './C_TextWidget.dart';

class C_ButtonWidget extends StatelessWidget {
  final Function dataHandler;
  final String answerText;
  C_ButtonWidget(
    this.dataHandler,this.answerText
  ); //constructor reciving function

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[500],
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: C_TextWidget(this.answerText),
        onPressed: dataHandler,
      ),
    );
  }
}
