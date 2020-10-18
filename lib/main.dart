import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void onPressed() => print('option 1 chosen');
  var questions = [
    'whats your fav animal',
    'whats your fav movies',
    'whats your fav food',
  ];
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
            Text('Click on below any one options '),
            RaisedButton(
              child: Text(questions.elementAt(0)),
              onPressed: onPressed,
            ),
            RaisedButton(
              child: Text(questions[1]),
              onPressed: () => print('chosen opetion 2'),
            ),
            RaisedButton(
              child: Text(questions[2]),
              onPressed: () => print('chosen opetion 3'),
            ),
          ],
        ),
      ),
    );
  }
}
