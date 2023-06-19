// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You did it';
    }
    else if (resultScore <= 12) {
      resultText = 'You are awesome';
    }
    else if (resultScore <= 16) {
      resultText = 'You are strange';
    }
    else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
