import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final String text;
  final VoidCallback changeText;

  TextControl({required this.text, required this.changeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(text),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.lightBlue),
        ),
        onPressed: changeText,
      ),
    );
  }
}
