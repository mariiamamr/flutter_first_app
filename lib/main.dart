import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _qstIndex = 0;
  int _total = 0;
  void _askQuest(int score) {
    setState(() {
      _total += _total + score;
      _qstIndex = _qstIndex + 1;
    });
    print(_total);
  }

  @override
  Widget build(BuildContext context) {
    const _questions = const [
      {
        'questText': 'what is ur fav color',
        'answersText': [
          {'text': 'blue', 'score': 10},
          {'text': 'red', 'score': 5},
          {'text': 'green', 'score': 5}
        ]
      },
      {
        'questText': 'what is ur fav animal',
        'answersText': [
          {'text': 'lion', 'score': 10},
          {'text': 'rabbit', 'score': 10},
          {'text': 'elephant', 'score': 10}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("My First App"),
          ),
          body: _qstIndex < _questions.length
              ? Quiz(_askQuest, _qstIndex, _questions)
              : Text('You are done with questions')),
    );
  }
}
