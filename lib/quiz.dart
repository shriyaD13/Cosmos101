import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int qIdx;

  Quiz(this.questions, this.answerQuestion, this.qIdx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qIdx]['Ques']?.toString() ?? '',
        ),
        ...(questions[qIdx]['ans'] as List<String>)
            .map((answer) => Answer(() => answerQuestion(answer), answer))
            .toList()
      ],
    );
  }
}
