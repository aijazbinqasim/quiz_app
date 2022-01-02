import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.answerQuestionHandler, this.answerText, {Key? key})
      : super(key: key);

  final void Function() answerQuestionHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: answerQuestionHandler,
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
      ),
    );
  }
}
