import 'package:flutter/material.dart';

import './question.dart';

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

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Ulubiona kasiazka!!!',
      'Ulubione zwierzę!!!',
      'Ulubiony kolor!!!',
    ];

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
            ElevatedButton(
              child: Text("answer1"),
              onPressed: _answerQuestions,
            ),
            ElevatedButton(
              child: Text("answer2"),
              onPressed: _answerQuestions,
            ),
            ElevatedButton(
              child: Text("answer3"),
              onPressed: _answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
