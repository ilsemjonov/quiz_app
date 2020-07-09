import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  void _answerQuestion() {
    setState(() {
      _questionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'question 1',
      'question 2',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIdx]),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
