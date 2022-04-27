import 'package:flutter/material.dart';

class Lyric extends StatelessWidget {
  final String lyric;

  Lyric(this.lyric);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        lyric,
        style: TextStyle(
          fontSize: 28,
          fontStyle: FontStyle.italic,
          fontFamily: 'Pacifico',
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
