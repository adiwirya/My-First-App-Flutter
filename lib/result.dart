import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result({@required this.resultScore,@required this.resetHandler});

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 8) {
      resultText = "You're Awesome!";
    } else if (resultScore <= 12) {
      resultText = "You're Cool!";
    } else if (resultScore <= 18) {
      resultText = "You're Handsome!";
    } else {
      resultText = "I Love You!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text("Restart Quiz"),
              onPressed: resetHandler,
            )
          ],
        ),
      ),
    );
  }
}
