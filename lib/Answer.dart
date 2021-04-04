import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function changeAns;
  final String answerText;
  Answer(this.changeAns, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: ElevatedButton(
        onPressed: changeAns,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
