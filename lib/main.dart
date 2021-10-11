import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppSate();
    // throw UnimplementedError();
  }
}

class _MyAppSate extends State<MyApp> {
  var _qIdx = 0;
  var totalScore = 0;
  var _questions = [
      {
        'Ques': 'The day on which the Sun’s direct rays cross the celestial equator is called: ',
        'ans': ['the equinox', 'the aphelion', 'the ecliptic', 'the solstice'],
        'correctAns' : 'the equinox'
      },
      {
        'Ques': 'Who invented the telescope?',
        'ans': ['Galileo', 'Hans Lippershey', 'Hypatia', 'Johannes Kepler'],
        'correctAns' : 'Hans Lippershey'
      },
      {
        'Ques': 'Which of these objects is the farthest from the Sun?',
        'ans': ['90377 Sedna', 'Saturn', 'Kuiper belt', 'Neptune'],
        'correctAns' : '90377 Sedna'
      }
    ];
  void _answerQuestion(String chosenAns) {
    setState(() {
      if(chosenAns == _questions[_qIdx]['correctAns']) totalScore += 1;
      print(totalScore);
      _qIdx = (_qIdx + 1);
    });
    // print(_qIdx);
  }

  void _resetQuiz()
  {
    setState(() {
      _qIdx = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _qIdx < _questions.length
            ? Quiz(
                _questions,
                _answerQuestion,
                _qIdx,
              )
            : Result(totalScore, _resetQuiz),
      ),
    );
  }
}
