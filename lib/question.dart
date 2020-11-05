import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qstText;

  // const Question({Key key, this.qstText}) : super(key: key);
  Question(this.qstText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        qstText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          fontFamily: "bold",
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}
