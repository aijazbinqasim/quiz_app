import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.totalScore, this.resetQuizHandler, {Key? key})
      : super(key: key);

  final int totalScore;
  final void Function() resetQuizHandler;

  String get getTotalScore => 'Your total score is: $totalScore Great !!!';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getTotalScore,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: const Text('Restart Quiz'),
            onPressed: resetQuizHandler,
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red)),
          ),
        ],
      ),
    );
  }
}
