import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  String qestion;
  CustomTextWidget(
    this.qestion,
  ); //Constructor
  @override
  Widget build(BuildContext context) {
    return Text(
      qestion,
    );//text
  }
}
