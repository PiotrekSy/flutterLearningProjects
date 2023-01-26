import 'package:flutter/material.dart';
import 'textComponent.dart';

class TextControlComponent extends StatelessWidget {
  final String someText;
  final VoidCallback setOtherTextHandler;

  const TextControlComponent(this.someText, this.setOtherTextHandler,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextComponent(someText),
          ElevatedButton(
            onPressed: setOtherTextHandler,
            child: const Text('Change text'),
          ),
        ],
      ),
    );
  }
}
