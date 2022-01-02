import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    Key? key,
    required this.questions,
    required this.index,
    required this.answerQuestionHandler,
  }) : super(key: key);

  final List<Map<String, Object>> questions;
  final int index;
  final void Function(int) answerQuestionHandler;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[index]['question'].toString(),
        ),
        ...(questions[index]['answers'] as List<Map<String, dynamic>>)
            .map((answerText) => Answer(
                  () => answerQuestionHandler(answerText['score']),
                  answerText['text'],
                ))
            .toList()
      ],
    );
  }
}
