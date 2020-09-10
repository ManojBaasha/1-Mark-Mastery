import 'package:flutter/material.dart';
import 'package:class_app/Maths/Ch8-Application Of Integrals/Maths.dart';

import 'package:class_app/Maths/Ch8-Application Of Integrals/Questions/quiz.dart';
import 'package:class_app/Maths/Ch8-Application Of Integrals/Questions/result.dart';
// void main() {
//   runApp(MyApp());
// }

class AI1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AIState1();
  }
}

class _AIState1 extends State<AI1> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {
          'text': 'Black',
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Rabbit',
        },
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {
          'text': 'Max',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(AI());
    });
  }

  void _answerQuestion(
    int score,
  ) {
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
