import 'package:flutter/material.dart';
import 'package:flutter_first_app/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Rabit', 'Sname', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Who\'s your favorite indtructor',
      'answers': ['Maxs', 'Max', 'Max', 'Max']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print('preessed');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
