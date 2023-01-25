import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
    {
      'questionText': 'Favorite color:',
      'answers': ['Black', 'Red', 'Green', 'Blue']
    },
    {
      'questionText': 'Favorite book:',
      'answers': [
        'Hobbit',
        'Lord Of The Rings',
        'Killing Species',
        'Unfinished Tales'
      ]
    },
    {
      'questionText': 'Favorite animal:',
      'answers': ['dog', 'cat', 'cheetah', 'elephant']
    },
  ];

  void _answerQuestions() {
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    }
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My FirstApp"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
