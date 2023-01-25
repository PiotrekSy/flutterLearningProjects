import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
    
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white30),
        ),
        child: Text("answer1"),
        onPressed: null,
      ),
    );
  }
}
