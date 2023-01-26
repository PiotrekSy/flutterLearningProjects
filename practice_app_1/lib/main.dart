import 'package:flutter/material.dart';
import 'textControlComponent.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAssignment();
  }
}

class _MyAssignment extends State<MyApp> {
  var _someText = 'Some text';

  void _setOtherTextHandler() {
    setState(() {
      _someText == 'Some text'
          ? _someText = 'Some other text'
          : _someText = 'Some text';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('practice_assignment'),
        ),
        body: TextControlComponent(_someText , _setOtherTextHandler ),
      ),
    );
  }
}
