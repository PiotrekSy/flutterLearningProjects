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

  void _answerQuestions() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  var questions = [
    'Favorite color:',
    'Favorite book:',
    'Favorite animal:',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My FirstApp"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            Answer(),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
