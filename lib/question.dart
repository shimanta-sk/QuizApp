import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
  //const Question({super.key});

  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    );
  }
}
