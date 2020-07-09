import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuestions;

  Result({this.resultScore, this.resetQuestions});

  String get resultPhrase {
    String resultText;

    if (resultScore <= 15) {
      resultText = 'Very good';
    } else if (resultScore <= 18) {
      resultText = 'Good';
    } else if (resultScore <= 21) {
      resultText = 'Appropriate';
    } else {
      resultText = 'Bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuestions,
            child: Text('Restart'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
