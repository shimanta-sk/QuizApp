import './question.dart';
import './answer.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Question(questions[questionIndex]['questionText'] as String),
          SizedBox(height: 20.0),
          ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(() => answerQuestion(answer['score']),
                answer['text'] as String);
          }).toList()
        ],
      ),
    );
  }
}
