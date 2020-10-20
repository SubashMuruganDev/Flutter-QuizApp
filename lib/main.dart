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
  var questions = [
    {
      "question": 'what\'s your fav animal',
      "answer": [
        'cat',
        'dog',
        'pig',
      ],
    },
    {
      "question": 'what\'s your fav food',
      "answer": ['Checken Briyani', 'chickenLeg', 'FridRice', 'Dog Leg Soup'],
    },
    {
      "question": 'what\'s your fav Car',
      "answer": ['lamborgini', 'tata', 'innova', 'auto'],
    },
    {
      "question": 'what\'s your fav bike',
      "answer": ['R15', 'cycle', 'honda', 'RoyanEnfield'],
    },
  ];
  void onPressed() {
    setState(() {
      if (_index < questions.length - 1) {
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
              questions[_index]['question'],
            ),
            ...(questions[_index]['answer'] as List<String>).map((answer) {
              return C_ButtonWidget(onPressed, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
