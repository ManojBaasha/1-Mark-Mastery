import 'package:class_app/Physics/Ch14-Semiconductor Electronics Materials Devices And Simple Circuits/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class S2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SState2();
  }
}

class _SState2 extends State<S2> {
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
      'questionText':
          'What happens when a forward bias is a applied to a p-n junction ?   ( AI 2015)',
      'answers': [
        {
          'text': 'It conducts current.',
        },
      ],
    },
    {
      'questionText':
          'In a transistor, doping level in base is increased slightly. How will it affect (i) collector current, and (ii) base current?[Delhi 2011]',
      'answers': [
        {
          'text':
              '(i) Collector current will decrease.(ii) Base current will increase',
        },
      ],
    },
    {
      'questionText':
          'What happens to the width of depletion layer of a p-n junction when it is (i) forward biased, (ii) reverse biased?[AI 2011]',
      'answers': [
        {
          'text':
              '(i) The width of depletion layer decreases.(ii) The width of depletion layer increases.',
        },
      ],
    },
    {
      'questionText':
          'State the reason, why GaAs is most commonly used in making of a solar cell.',
      'answers': [
        {
          'text': 'It has higher absorption coefficient.',
        },
      ],
    },
    {
      'questionText':
          'How does the d.c. current gain of a transistor change, if the width of the base region is increased?',
      'answers': [
        {
          'text': ' It will decrease due to decrease in collector current.',
        },
      ],
    },
    {
      'questionText':
          'Name the type of biasing of a p-n junction diode so that the junction offers very high resistance.',
      'answers': [
        {
          'text': 'Reverse biasing.',
        },
      ],
    },
    {
      'questionText':
          'Name one impurity each, which when added to pure Si, produces (i) n-type, and (ii) p-type semiconductor.',
      'answers': [
        {
          'text': '(i) for n-type, arsenic.(ii) for p-type, Indium.',
        },
      ],
    },
    {
      'questionText':
          'Why is the conductivity of n-type semi-conductor greater than that of the p-type semi-conductor even when both of these have same level of doping?',
      'answers': [
        {
          'text':
              'In n-type semiconductor charge carriers are electrons and mobility of electrons is more than that of holes.',
        },
      ],
    },
    {
      'questionText':
          'Name two factors on which electrical conductivity of a pure semiconductor at a given temperature depends.',
      'answers': [
        {
          'text': '(i) Band gap (ii) Biasing',
        },
      ],
    },
    {
      'questionText': 'Why cant transistor be used as a rectifier? [HOTS]',
      'answers': [
        {
          'text':
              'As base is thin and lightly doped, the transistor is not fit for the purpose of rectification.',
        },
      ],
    },
    {
      'questionText': 'What is a hole? What is its physical significance?',
      'answers': [
        {
          'text':
              'Hole is the vacancy of electron in valence band. The vacancy with the hole behaves as an apparent free particle with effective positive charge.',
        },
      ],
    },
    {
      'questionText':
          'Why are the elemental dopants mainly taken from 13th and 15th group, for doping Silicon or Germanium?',
      'answers': [
        {
          'text':
              'The dopant has to be such that it does not distort the original pure semiconductor lattice. So that the sizes of the dopant and the semiconductor atoms should be nearly the same.',
        },
      ],
    },
    {
      'questionText': 'What is an ideal diode?',
      'answers': [
        {
          'text':
              'It is a p-n junction diode which offer zero resistance in forward biasing and infinite resistance in reverse biasing, i.e. current flows through it in one direction only.',
        },
      ],
    },
    {
      'questionText': 'What is internal field emission?',
      'answers': [
        {
          'text':
              'The emission of electrons from the host atoms due to the high electric field is known as internal field emission or field ionisation.',
        },
      ],
    },
    {
      'questionText': 'Why a typical solar cell is drawn in fourth quadrant?',
      'answers': [
        {
          'text':
              'I - V characteristics of solar cell is drawn in the fourth quadrant of the coordinate axes. This is because a solar cell does not draw current but supplies the same to the load.',
        },
      ],
    },
    {
      'questionText': 'What is a Logic gate?',
      'answers': [
        {
          'text':
              'A gate is a digital circuit that follows certain logical relationship between the input and output voltages. They control the flow of information.',
        },
      ],
    },
    {
      'questionText': 'Why NAND or NOR gates are called universal gates?',
      'answers': [
        {
          'text':
              'NAND or NOR gates are called Universal Gates since by using these gates one can realise other basic gates like OR, AND and NOT.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(S());
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
          title: Text('Q And A'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_resetQuiz),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(S());
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
          ),
          heroTag: "Back",
        ),
      ),
    );
  }
}
