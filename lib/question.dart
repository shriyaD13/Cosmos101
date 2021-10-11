import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesTexT;

  Question(this.quesTexT);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quesTexT,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
