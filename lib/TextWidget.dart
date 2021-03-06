import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String qestion; //added final to make it immutable
  TextWidget(
    this.qestion,
  ); //Constructor
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        qestion,
        style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: 27,
        ),
        textAlign: TextAlign.center,
      ),
    ); //text
  }
}
