import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "Whats's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite song?",
      "What's your favorite movie?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
