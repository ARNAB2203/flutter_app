import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuizApp;
  final int totalScore;
  Result(this.resetQuizApp, this.totalScore);

  String get resultScore {
    var resultText;
    if (totalScore < 8) {
      resultText =
          "You are awesome !!!\n You have socred : " + totalScore.toString();
    } else if (totalScore < 16) {
      resultText =
          "You are average !!!\n You have socred : " + totalScore.toString();
    } else if (totalScore < 25) {
      resultText =
          "You are poor !!!\n You have socred : " + totalScore.toString();
    } else {
      resultText = "Failed !!!\n You have socred : " + totalScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          resultScore,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
        FlatButton(
          onPressed: resetQuizApp,
          child: Text("Restart Quiz !"),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
