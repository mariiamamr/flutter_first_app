import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quest;
  Question(this.quest); //comes from outside

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(quest,
          textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
    );
  }
}
