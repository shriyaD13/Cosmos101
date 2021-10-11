import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function() resetQuiz;

  Result(this.totalScore, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Your score is ${totalScore}'),
          TextButton(
            child: Text('Restart Quiz!'),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
