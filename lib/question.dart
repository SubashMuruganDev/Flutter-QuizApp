import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  String qestion;
  String optionalArgument;
  CustomTextWidget(this.qestion);
  @override
  Widget build(BuildContext context) {
    return Text(qestion);
  }
  
}
