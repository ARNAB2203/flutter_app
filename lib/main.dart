import 'package:flutter/material.dart';
import 'package:flutter_app/result.dart';
import 'result.dart';
import 'quesans.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questionList = const [
    {
      "question": "Five Colors ?",
      "answer": [
        {"txt": "Red", "score": 10},
        {"txt": "Blue", "score": 5},
        {"txt": "Orange", "score": 4},
        {"txt": "Green", "score": 2},
        {"txt": "Black", "score": 1}
      ]
    },
    {
      "question": "Five Animals ?",
      "answer": [
        {"txt": "Cow", "score": 10},
        {"txt": "Goat", "score": 5},
        {"txt": "Tiger", "score": 4},
        {"txt": "Lion", "score": 2},
        {"txt": "Deer", "score": 1}
      ]
    },
    {
      "question": "Five Vegtables ?",
      "answer": [
        {"txt": "Potato", "score": 10},
        {"txt": "Ginger", "score": 5},
        {"txt": "Garlic", "score": 4},
        {"txt": "Lemon", "score": 2},
        {"txt": "Banana", "score": 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _buttonClickWithAnswer(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionList.length < _questionIndex) {
        print("More option to choose...");
      } else {
        print("No option to choose...");
      }
      print("Button clicked ! " +
          _questionIndex.toString() +
          " Total Score = " +
          _totalScore.toString());
    });
  }

  void _resetQuizApp() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Flutter App Demo !"),
        ),
        body: _questionList.length > _questionIndex
            ? QuestionAnswer(
                _questionList, _questionIndex, _buttonClickWithAnswer)
            : Result(_resetQuizApp, _totalScore),
      ),
    );
  }
}
