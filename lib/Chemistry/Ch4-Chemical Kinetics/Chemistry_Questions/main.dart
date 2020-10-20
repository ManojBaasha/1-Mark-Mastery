import 'package:class_app/Chemistry/Ch4-Chemical Kinetics/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class CK2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CKState2();
  }
}

class _CKState2 extends State<CK2> {
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
      'questionText': 'Define threshold energy of a reaction.',
      'answers': [
        {
          'text':
              'Threshold energy is the minimum energy which must be possessed by reading molecules in order to undergo effective collision which leads to formation of product molecule.',
        },
      ],
    },
    {
      'questionText':
          'Why does the rate of a reaction not remain constant throughout the reaction process? [ Delhi 2010 C]',
      'answers': [
        {
          'text':
              'It is because the concentration of reactants goes on decreasing with time.',
        },
      ],
    },
    {
      'questionText': 'What is meant by order of a reaction being zero?',
      'answers': [
        {
          'text':
              'It means the reaction is extremely fast and the rate of reaction does not vary with the concentration of the reactants as it gets completed within seconds.',
        },
      ],
    },
    {
      'questionText':
          'State a condition in which bimolecular reaction is kinetically first order reaction.',
      'answers': [
        {
          'text':
              'When one of the reactants is in excess , bimolecular reaction becomes kinetically first order.',
        },
      ],
    },
    {
      'questionText':
          'For which type of reactions, order and molecularity have same value?',
      'answers': [
        {
          'text':
              'If the reaction is elementary reaction, order and molecularity are equal.',
        },
      ],
    },
    {
      'questionText':
          'For a zero order reaction will the molecularity be equal to zero?',
      'answers': [
        {
          'text': 'No, molecularity can never be equal to zero or in fraction.',
        },
      ],
    },
    {
      'questionText':
          'Why is the probability of reaction with molecularity higher than three very rare?',
      'answers': [
        {
          'text':
              'It is because multimolecular collisions have least or rare probability.',
        },
      ],
    },
    {
      'questionText':
          'According to Arrhenius, rate of reaction increases with increase in temperature. Give reasons.',
      'answers': [
        {
          'text':
              'Rate of a reaction increase in temperature because when kinetic energy of molecules increases, the number of molecules possessing activation energy also increases, i.e. number of effective collision increases and therefore the rate of reaction increases.',
        },
      ],
    },
    {
      'questionText':
          'When is the rate of reaction equal to specific reaction rate?',
      'answers': [
        {
          'text':
              'Rate of reaction becomes equal to rate constant when molar concentration of reactants is equal to unity.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(CK());
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
        runApp(CK());
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
              runApp(CK());
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
