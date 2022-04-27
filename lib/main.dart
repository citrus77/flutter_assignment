// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './text.dart';
import './textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _lyrics = [
    'Load up on guns and bring your friends',
    'It\'s fun to lose and to pretend',
    'She\'s over-bored and self-assured',
    'Oh no, I know a dirty word',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello',
    'With the lights out, it\'s less dangerous',
    'Here we are now, entertain us',
    'I feel stupid and contagious',
    'Here we are now, entertain us',
    'A mulatto, an albino',
    'A mosquito, my libido',
    'Yeah, hey, yay',
    'I\'m worse at what I do best',
    'And for this gift I feel blessed',
    'Our little group has always been',
    'And always will until the end',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello',
    'With the lights out, it\'s less dangerous',
    'Here we are now, entertain us',
    'I feel stupid and contagious',
    'Here we are now, entertain us',
    'A mulatto, an albino',
    'A mosquito, my libido',
    'Yeah, hey, yay',
    'And I forget just why I taste',
    'Oh yeah, I guess it makes me smile',
    'I found it hard, it\'s hard to find',
    'Oh well, whatever, nevermind',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello, how low?',
    'Hello, hello, hello',
    'With the lights out, it\'s less dangerous',
    'Here we are now, entertain us',
    'I feel stupid and contagious',
    'Here we are now, entertain us',
    'A mulatto, an albino',
    'A mosquito, my libido',
    'A denial, a denial',
    'A denial, a denial',
    'A denial, a denial',
    'A denial, a denial',
    'A denial',
  ];

  var _lyricIndex = 0;

  void _changeText() {
    setState(() {
      _lyricIndex = _lyricIndex + 1;
      if (_lyricIndex >= _lyrics.length) {
        _lyricIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Smells Like Teen Spirit',
              style: TextStyle(fontFamily: 'Pacifico'),
              textAlign: TextAlign.center),
        ),
        body: Center(
          child: Column(
            children: [
              Lyric(_lyrics[_lyricIndex]),
              TextControl(
                text: 'Change Text',
                changeText: _changeText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
