import 'package:flutter/material.dart';

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
      'questionText': 'question\'1',
      'answers': [
        {'text': 'answer1', 'score': 1},
        {'text': 'answer2', 'score': 2},
        {'text': 'answer3', 'score': 3},
        {'text': 'answer4', 'score': 4},
      ],
    },
    {
      'questionText': 'question\'2',
      'answers': [
        {'text': 'answer5', 'score': 5},
        {'text': 'answer6', 'score': 6},
        {'text': 'answer7', 'score': 7},
        {'text': 'answer8', 'score': 8},
      ],
    },
    {
      'questionText': 'question\'3',
      'answers': [
        {'text': 'answer9', 'score': 9},
        {'text': 'answer10', 'score': 10},
        {'text': 'answer11', 'score': 11},
        {'text': 'answer12', 'score': 12},
      ],
    },
  ];

  var _questionIdx = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIdx < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIdx: _questionIdx,
                questions: _questions,
              )
            : Result(
                resultScore: _totalScore,
                resetQuestions: _resetQuiz,
              ),
      ),
    );
  }
}
