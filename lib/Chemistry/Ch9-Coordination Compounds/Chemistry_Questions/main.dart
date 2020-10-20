import 'package:class_app/Chemistry/Ch9-Coordination Compounds/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class CC2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CCState2();
  }
}

class _CCState2 extends State<CC2> {
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
      'questionText': 'Define coordination number.',
      'answers': [
        {
          'text':
              'Coordination number is defined as the number of donor atoms which form coordinate bonds with a central metal ion in complex compound or ion. ',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(CC());
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
        runApp(CC());
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
              runApp(CC());
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
