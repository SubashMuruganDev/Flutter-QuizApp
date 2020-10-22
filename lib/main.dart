import 'package:Basics/quiz.dart';

import 'package:Basics/result.dart';

import 'package:flutter/material.dart';

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
  var index = 0;
  var totalScore = 0;
  final questions = const [
    {
      "question": 'what\'s your fav animal',
      "answer": [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 20},
        {'text': 'fish', 'score': 30},
      ],
    },
    {
      "question": 'what\'s your fav food',
      "answer": [
        {'text': 'Briyani', 'score': 20},
        {'text': 'FridRice', 'score': 10},
        {'text': 'Roti', 'score': 20},
        {'text': 'Fish', 'score': 40},
      ],
    },
    {
      "question": 'what\'s your fav Car',
      "answer": [
        {'text': 'Innova', 'score': 30},
        {'text': 'Tata', 'score': 20},
        {'text': 'Audi', 'score': 100},
        {'text': 'Lambogini', 'score': 200},
      ],
    },
  ];
  void onPressed(int score) {
    totalScore += score;
    setState(
      () {
        index += 1;
      },
    );
    print(totalScore);
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
        body: index < questions.length
            ? Quiz(
                index: index,
                questions: questions,
                onPressed: onPressed,
              )
            : Result(),
      ),
    );
  }
}
