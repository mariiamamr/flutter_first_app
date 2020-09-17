import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final int qstIndex;
  final List<Map<String, Object>> questions;
  final Function askQuest;

  Quiz(this.askQuest, this.qstIndex, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[qstIndex]['questText']),
        //answers mapping
        ...(questions[qstIndex]['answersText'] as List<Map<String, Object>>)
            .map((answers) {
          //answers=answersText
          return Answers(() => askQuest(answers['score']), answers['text']);
        }).toList()
      ],
    );
  }
}
