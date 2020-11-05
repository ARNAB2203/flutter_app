import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class QuestionAnswer extends StatelessWidget {
  final Function buttonClickWithAnswer;
  final List<Map<String, Object>> questionList;
  final int questionIndex;

  QuestionAnswer(
      this.questionList, this.questionIndex, this.buttonClickWithAnswer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("\nNew in Flutter.\n"),
        Question(questionList[questionIndex]["question"]),
        ...(questionList[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) => Answer(
                () => buttonClickWithAnswer(answer["score"]), answer["txt"]))
            .toList()
      ],
    );
  }
}
