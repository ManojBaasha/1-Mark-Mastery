import 'package:class_app/Chemistry/Ch10-Haloalkenes And HaloArenes/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class HH2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HHState2();
  }
}

class _HHState2 extends State<HH2> {
  final _questions = const [
    {
      'questionText':
          "For each question Press the answer to move to the next question",
      'answers': [
        {
          'text': "Start!",
        },
      ],
    },
    {
      'questionText': 'Why iodoform has appreciable antiseptic property?',
      'answers': [
        {
          'text':
              'It is because it liberates iodine which has antiseptic property.',
        },
      ],
    },
    {
      'questionText':
          'Why is the solubility of haloalkanes in water very low ?',
      'answers': [
        {
          'text':
              'It is because haloalkanes are less polar and cannot form H-bonds with water.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(HH());
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

    return WillPopScope(
      onWillPop: () {
        runApp(HH());
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Q And A'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_resetQuiz),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              runApp(HH());
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
            ),
            heroTag: "Back",
          ),
        ),
      ),
    );
  }
}
