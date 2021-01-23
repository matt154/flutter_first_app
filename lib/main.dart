import 'package:flutter/material.dart';

import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQution() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex > 1) {
      _questionIndex = 0;
    }
    print('preessed');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color',
      'What\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]
              ),
            RaisedButton(
              child: Text('Answer 1!'),
              onPressed: _answerQution,
            ),
            RaisedButton(
              child: Text('Answer 2!'),
              onPressed: _answerQution,
            ),
            RaisedButton(
              child: Text('Answer 3!'),
              onPressed: _answerQution,
            ),
          ],
        ),
      ),
    );
  }
}
