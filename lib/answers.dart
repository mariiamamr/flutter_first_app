import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function handle;
  final String ans;
  Answers(this.handle, this.ans); //comes from outside

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            textColor: Colors.green, onPressed: handle, child: Text(ans)));
  }
}
