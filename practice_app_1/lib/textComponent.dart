import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String someText;

  const TextComponent(this.someText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(someText);
  }
}
