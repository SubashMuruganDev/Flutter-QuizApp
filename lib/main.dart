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
  void onPressed() {
    index = index + 1;
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'whats your fav animal',
      'whats your fav movies',
      'whats your fav food',
    ];
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
              child: Text(questions[index]),
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
