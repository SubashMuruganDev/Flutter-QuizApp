import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void onPressed() => print('option chosen');
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
              child: Text('option 1'),
              onPressed: onPressed,
            ),
            RaisedButton(
              child: Text('option 2'),
              onPressed: onPressed,
            ),
            RaisedButton(
              child: Text('option 3'),
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
