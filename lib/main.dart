import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

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

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 5},
        {"text": "White", "score": 3},
        {"text": "Blue", "score": 10},
        {"text": "Yellow", "score": 1}
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 5},
        {"text": "Snake", "score": 1},
        {"text": "Scorpio", "score": 10},
        {"text": "Sea Goat", "score": 3}
      ],
    },
    {
      "questionText": "What's your favorite japanese food?",
      "answers": [
        {"text": "Sushi", "score": 10},
        {"text": "Gyoza", "score": 1},
        {"text": "Ramen", "score": 5},
        {"text": "Gyudon", "score": 3}
      ],
    },
    {
      "questionText": "What's your favorite korean food?",
      "answers": [
        {"text": "Gimbab", "score": 3},
        {"text": "Ttokboki", "score": 10},
        {"text": "Jjangmyeon", "score": 1},
        {"text": "Japchae", "score": 3}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    } else
      print("No More Question!");
  }

  void _resetQuiz() {
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
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(resultScore: _totalScore, resetHandler: _resetQuiz,),
      ),
    );
  }
}
