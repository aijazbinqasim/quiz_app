import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final _questions = const <Map<String, Object>>[
    {
      'question': 'What\'s your fav. color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'question': 'What\'s your fav. language?',
      'answers': [
        {'text': 'C#', 'score': 20},
        {'text': 'Dart', 'score': 10},
        {'text': 'Java', 'score': 30},
        {'text': 'Php', 'score': 5},
      ],
    },
    {
      'question': 'What\'s your fav. animal?',
      'answers': [
        {'text': 'Lion', 'score': 4},
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 2},
        {'text': 'Elephant', 'score': 1},
      ],
    },
  ];

  var _index = 0;
  var _totalScore = 0;

  void _answerQuestion(int totalScore) {
    _totalScore += totalScore;

    setState(() {
      _index = _index + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Awesome Quize App',
          ),
        ),
        body: _index < _questions.length
            ? Quiz(
                questions: _questions,
                index: _index,
                answerQuestionHandler: _answerQuestion,
              )
            : Result(
                _totalScore,
                _resetQuiz,
              ),
      ),
    );
  }
}
