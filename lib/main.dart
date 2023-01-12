import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  final _question = const [
    {
      'questionText': "What does RFID stand for?",
      'answer': [
        {'text': 'radio frequency identification', 'score': 1},
        {'text': 'radio frequency issue date', 'score': 0},
        {'text': 'real far identification', 'score': 0},
        {'text': 'rear field identification', 'score': 0}
      ],
    },
    {
      'questionText': "The SMART Board Software is called_________",
      'answer': [
        {'text': 'Notebook', 'score': 1},
        {'text': 'Spiral page', 'score': 0},
        {'text': 'Note page', 'score': 0},
        {'text': 'All of the above', 'score': 0}
      ],
    },
    {
      'questionText': "WAP?",
      'answer': [
        {'text': 'wireless application protocol', 'score': 1},
        {'text': 'wired allication protocol', 'score': 0},
        {'text': 'wide application protocol', 'score': 0},
        {'text': 'none of the above', 'score': 0}
      ],
    },
    {
      'questionText': "WAP is designed for?",
      'answer': [
        {'text': 'internet explorer', 'score': 0},
        {'text': 'web browser', 'score': 0},
        {'text': 'micro browser', 'score': 1},
        {'text': 'macro browser', 'score': 0}
      ],
    },
    {
      'questionText':
          "Code written on the .NET Framework platform is called...........",
      'answer': [
        {'text': 'client code', 'score': 0},
        {'text': 'managed code', 'score': 1},
        {'text': 'server code', 'score': 0},
        {'text': 'none of the above', 'score': 0}
      ],
    },
    {
      'questionText': "IrDA support ........",
      'answer': [
        {'text': 'sql server ce', 'score': 0},
        {'text': 'device specific controls', 'score': 0},
        {'text': 'high performance jit compiler', 'score': 0},
        {'text': 'all of the above', 'score': 1}
      ],
    },
    {
      'questionText': "Gateway to the Internet optimized for mobility?",
      'answer': [
        {'text': 'Voice portal', 'score': 0},
        {'text': 'WiMax', 'score': 0},
        {'text': 'Mobile enterprise', 'score': 0},
        {'text': 'Mobile Portal', 'score': 1}
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _question,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
