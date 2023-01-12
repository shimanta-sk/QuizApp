import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    //print(resultScore);
    if (resultScore >= 6) {
      resultText = 'You are awesome and excellent';
    } else if (resultScore >= 4) {
      resultText = 'Good';
    } else {
      resultText = 'Pratice more...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 210.0),
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text("Return quiz again"),
          )
        ],
      ),
    );
  }
}
