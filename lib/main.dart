import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void buttonClick() {
    print("Button clicked !");
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
            RaisedButton(child: Text("Button 1"), onPressed: buttonClick),
            Row(
              children: [
                Text("\nRow 1 in Flutter. "),
                Text("\nRow 2 in Flutter. "),
                Text("\nRow 3 in Flutter."),
              ],
            ),
            RaisedButton(child: Text("Button 2"), onPressed: buttonClick),
            Row(
              children: [
                Text("\nRow 1 in Flutter. "),
                Text("\nRow 2 in Flutter. "),
                Text("\nRow 3 in Flutter."),
              ],
            ),
            RaisedButton(child: Text("Button 3"), onPressed: buttonClick),
            Row(
              children: [
                Text("\nRow 1 in Flutter. "),
                Text("\nRow 2 in Flutter. "),
                Text("\nRow 3 in Flutter."),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
