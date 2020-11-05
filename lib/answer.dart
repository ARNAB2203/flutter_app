import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerValue;
  final String answers;
  Answer(this.answerValue, this.answers);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answers),
        color: Colors.blue,
        onPressed: answerValue,
        textColor: Colors.white,
      ),
      margin: EdgeInsets.all(10),
      width: double.infinity,
    );
  }
}
