import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionList = [
    {
      "question": "Five Colors ?",
      "answer": ["Red", "Blue", "Orange", "Green", "Black"]
    },
    {
      "question": "Five Animals ?",
      "answer": ["Cow", "Goat", "Tiger", "Lion", "Deer"]
    },
    {
      "question": "Five Vegtables ?",
      "answer": ["Potato", "Ginger", "Garlic", "Lemon", "Banana"]
    },
  ];
  var _question = 0;

  void buttonClick() {
    setState(() {
      _question = _question + 1;
      print("Button clicked !" + _question.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter App Demo !"),
        ),
        body: Column(
          children: [
            Text("\nNew in Flutter.\n"),
            Question(_questionList[_question]["question"]),
            ...(_questionList[_question]["answer"] as List<String>)
                .map((answer) => Answer(buttonClick, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
