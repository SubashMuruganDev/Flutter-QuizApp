import 'package:flutter/material.dart';

import './C_TextWidget.dart';

import './C_ButtonWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _questions = [
    'whats your fav animal',
    'whats your fav movies',
    'whats your fav food',
    'whats your fav car',
    'whats your fav bike',
    'whats your fav plane',
  ];
  void onPressed() {
    setState(() {
      if (_index < _questions.length - 1) {
        _index++;
      } else
        print(
            'import more questions from some library since we have only limited');
    });
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[200],
          title: Center(
            child: Text('HomePage'),
          ),
        ),
        // backgroundColor: Colors.deepPurple[400],
        body: Column(
          children: [
            C_TextWidget(
              _questions[_index],
            ),
            C_ButtonWidget(onPressed),
            C_ButtonWidget(onPressed),
            C_ButtonWidget(onPressed),
          ],
        ),
      ),
    );
  }
}
