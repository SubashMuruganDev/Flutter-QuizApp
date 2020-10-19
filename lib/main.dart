import 'package:flutter/material.dart';

import 'Widget.dart';

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
            child: CustomTextWidget('HomePage'),
          ),
        ),
        // backgroundColor: Colors.deepPurple[400],
        body: Column(
          children: [
            CustomTextWidget(_questions[_index]),
            RaisedButton(
              child: CustomTextWidget('Quick Change Question'),
              onPressed: onPressed,
            ),
            RaisedButton(
              child: CustomTextWidget('Option 2'),
              onPressed: () => print('chosen opetion 2'),
            ),
            RaisedButton(
              child: CustomTextWidget('Option 3'),
              onPressed: () => print('chosen opetion 3'),
            ),
          ],
        ),
      ),
    );
  }
}
