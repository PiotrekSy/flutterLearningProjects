import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (totalScore <= 8) {
      resultText = 'You are awesome 8!';
    } else if (totalScore <= 12) {
      resultText = 'You are awesome 12!';
    } else if (totalScore <= 16) {
      resultText = 'You are awesome 16!';
    } else {
      resultText = 'You are awesome!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart Quiz'),
            onPressed: resetQuiz,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, foregroundColor: Colors.black),
          ),
        ],
      ),
    );
  }
}
