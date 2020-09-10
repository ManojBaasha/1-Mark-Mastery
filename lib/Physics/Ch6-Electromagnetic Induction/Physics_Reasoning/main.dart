import 'package:class_app/Physics/Ch6-Electromagnetic Induction/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class EI2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EIState2();
  }
}

class _EIState2 extends State<EI2> {
  final _questions = const [
    {
      'questionText':
          'Name the phenomenon which shows the quantum nature of electromagnetic nature of electromagnetic radiation.[March2017]',
      'answers': [
        {
          'text': 'PhotoElectric Effect, Raman Effect, Compton Effect',
        },
      ],
    },
    {
      'questionText':
          'Name the electromagnetic radiations used for (a)water purification  (b)eye surgery[March 2018]',
      'answers': [
        {
          'text': '(a)Ultraviolet Rays   (b)Laser',
        },
      ],
    },
    {
      'questionText':
          'Why do we prefer carbon brushes than copper in an ac generator ?',
      'answers': [
        {
          'text':
              'Corrosion free and small expansion on heating maintains proper contact.',
        },
      ],
    },
    {
      'questionText':
          'The motion of copper plate is damped when it is allowed to oscillate between the two poles of a magnet. What is the cause of this damping? ( AI 2013)',
      'answers': [
        {
          'text': 'Eddy currents',
        },
      ],
    },
    {
      'questionText':
          'A closed loop is held stationary in the magnetic field between the north current in the loop by using very strong magnets?',
      'answers': [
        {
          'text':
              'No. However strong the magnet may be, current can be induced only be changing the magnetic flux through the loop.',
        },
      ],
    },
    {
      'questionText':
          ' A closed loop moves normal to the constant electric field between the plates of a large capacitor. Is a current induced in the loop (i) when it is wholly inside the region between the capacitor plates, and (ii) when it is partially outside the plates of the capacitor? The electric field is normal to the plane of the loop.',
      'answers': [
        {
          'text':
              'No current is induced in either case. Current cannot be induced by changing the electric flux.',
        },
      ],
    },
    {
      'questionText':
          'A rectangular loop of wire is pulled to the right away from the long straight wire through which a steady current / flows upwards. What is the direction of induced current in the loop?',
      'answers': [
        {
          'text': 'Clockwise.',
        },
      ],
    },
    {
      'questionText':
          'When a coil is rotated in a uniform magnetic field at constant angular velocity, will the magnitude of induced emf set up in the coil be constant? Why?',
      'answers': [
        {
          'text':
              'No, the induced emf will vary with time and will be sinosoidal due to the change in orientation of the coil w.rit. the magnetic field.',
        },
      ],
    },
    {
      'questionText':
          'A light metal disc on the top of an electromagnet is thrown up as the current is switched on. Why? Give reason.',
      'answers': [
        {
          'text':
              'Due to the eddy currents. As these currents produce opposite polarity on the lower side of the disc.',
        },
      ],
    },
    {
      'questionText':
          'How does the mutual inductance of a pair of coils change when (i) distance between the coils is increased and (ii) number of turns in the coils is increased? (AI 2013)',
      'answers': [
        {
          'text':
              '(i) When the distance between a pair of coils is increased, the magnetic flux linked with the secondary coil decreases and hence, the mutual inductance between them will decrease. (ii) Since M o N, N 2, so, when number of turns in the coil is increased, the mutual inductance will also increase.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(EI());
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
      ),
    );
  }
}
