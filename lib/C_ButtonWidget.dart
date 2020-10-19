import 'package:flutter/material.dart';

import './C_TextWidget.dart';

class C_ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[500],
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: C_TextWidget('options'),
        onPressed: null,
      ),
    );
  }
}
