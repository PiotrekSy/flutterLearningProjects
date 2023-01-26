import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//states :
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  final _questions = const [
    {
      'questionText': 'Favorite color:',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 1},
      ]
    },
    {
      'questionText': 'Favorite book:',
      'answers': [
        {'text': 'Hobbit', 'score': 10},
        {'text': 'Lord Of The Rings', 'score': 7},
        {'text': 'Silmarilion', 'score': 4},
        {'text': 'Killing Species', 'score': 1},
      ]
    },
    {
      'questionText': 'Favorite animal:',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'elephant', 'score': 7},
        {'text': 'cheetah', 'score': 4},
        {'text': 'cat', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My FirstApp"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestions,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
