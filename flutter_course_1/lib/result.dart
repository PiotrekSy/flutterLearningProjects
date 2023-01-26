import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('You Did It!'),
          Text('You Did It!'),
        ],
      ),
    );
  }
}
