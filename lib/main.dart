import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var questions = [
    'whats your fav animal',
    'whats your fav movies',
    'whats your fav food',
    'whats your fav car',
    'whats your fav bike',
    'whats your fav plane',
  ];
  void onPressed() {
    setState(() {
      if (index < questions.length - 1) {
        index++;
      } else
        print('import more questions from some library');
    });
    print(index);
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
            Text(questions[index]),
            RaisedButton(
              child: Text('Quick Change Question'),
              onPressed: onPressed,
            ),
            RaisedButton(
              child: Text('Option 2'),
              onPressed: () => print('chosen opetion 2'),
            ),
            RaisedButton(
              child: Text('Option 3'),
              onPressed: () => print('chosen opetion 3'),
            ),
          ],
        ),
      ),
    );
  }
}
