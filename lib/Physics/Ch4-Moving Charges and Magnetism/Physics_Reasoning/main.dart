import 'package:class_app/Physics/Ch4-Moving Charges and Magnetism/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class MC2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MCState2();
  }
}

class _MCState2 extends State<MC2> {
  final _questions = const [
    {
      'questionText':
          'Write the conditions under which an electron will move undeflected in the presence of a crossed electric and magnetic fields',
      'answers': [
        {
          'text':
              'The electron will move undeflected in the presence of crossed electric and magnetic field if the electric force on the electron is balanced by the magnetic force acting on the electron ,;Mathematically q E = q V B;Where q - charge;E - electric field;B - magnetic field;V - velocity of the electron;In the given problem q = v (charge on electron );eE = eVB',
        },
      ],
    },
    {
      'questionText':
          'An electriccurrent flows from horizontal wire from east to west. What will be the direction of magnetic field due to the current at a point (i)North of wire; (ii)above the wire',
      'answers': [
        {
          'text':
              'The current is in the east-west direction. Applying the right-hand thumb rule, we get that the direction of magnetic field at a point below the wire is from north to south. The direction of magnetic field at a point directly above the wire is from south to north.',
        },
      ],
    },
    {
      'questionText':
          'Why are pole pieces of a magnet in a moving coil galvanometer made concave?',
      'answers': [
        {
          'text':
              'The moving coil of a moving coil galvanometer, moves in a magnetic field produced by a permanent magnet. ... We want the current carrying coil to be always perpendicular to the magnetic field, even when it has rotated. The magnetic field produced by concave shaped pole faces is always radial.',
        },
      ],
    },
    {
      'questionText':
          'Two protons of equal kinetic energies enter a region of uniform magnetic field. The first proton enters normal to the field direction while the second enters at 30 degrees to the field direction. Name the trajectories followed by them.[Compartment 2018]',
      'answers': [
        {
          'text':
              'Normal:Circular,At an angle 30 degrees ,it will follow a helical path',
        },
      ],
    },
    {
      'questionText':
          'A proton and an electron travelling along parallel paths enter a region of uniform magnetic field, acting perpendicular to ther paths. Which of them will move in a circular path with higher frequency?[March 2018]',
      'answers': [
        {
          'text': 'Elecron',
        },
      ],
    },
    {
      'questionText':
          'An electron does not suffer any deflection while passing through a region of uniform magnetic field. What is the direction of the magnetic field?',
      'answers': [
        {
          'text':
              'Magnetic field will be in the line of the velocity of electron.',
        },
      ],
    },
    {
      'questionText':
          'A proton is moving along + ve  x-axis in the presence of uniform magnetic fiels along + ve y-axis . What is the direction of the force acting on it ?',
      'answers': [
        {
          'text': 'Positive (+ve) z-axis.',
        },
      ],
    },
    {
      'questionText':
          ' Write 2 properties of a material used as a ssuspension wire in a moving coil galvanometer.',
      'answers': [
        {
          'text':
              '(i) Low value of k( tortional constant ).(ii) High conductivity.',
        },
      ],
    },
    {
      'questionText':
          'Under what condition will the force exerted by the magnetic field on a charged particle be (i)maximum and (ii) minimum?',
      'answers': [
        {
          'text':
              '(i) When a charged particle is moving perpendicular to the magnetic field.(ii) When a charged particle is moving parallel or anti-parallel to the magnetic field.',
        },
      ],
    },
    {
      'questionText':
          ' Why does a moving charge experience a force when placed in a magnetic field ?',
      'answers': [
        {
          'text':
              'A moving charge produces a magnetic field. This magnetic field interacts with another magnetic field of a magnet and hence, it experiences force.',
        },
      ],
    },
    {
      'questionText':
          'Magnetic field lines can be entirely confined within the core of a toroid, but not within a straight solenoid. Why ?',
      'answers': [
        {
          'text':
              'At the edges of a solenoid , the field lines get diverged due to other fields or non-availability of dipole loops, while in a toroid, the dipoles ( in loops) orient continuously.',
        },
      ],
    },
    {
      'questionText':
          'Which has greater resistance (a) milliammeter or ammeter (b) milliammeter or voltmeter ?',
      'answers': [
        {
          'text': '(a) Milliameter  (b) Voltmater.',
        },
      ],
    },
    {
      'questionText':
          ' A voltmeter, an ammeter and a resistance are connected in series with a battery. The voltmeter gives same deflection but the deflection of ammeter is almost zero. Explain why?',
      'answers': [
        {
          'text':
              ' When a voltmeter is connected in series, the current in the circuit decreases because the resistance of voltmeter is high. Therefore, it will show some deflection. But in an ammeter, the majority of this current will pass through the shunt and a very small fraction will pass through the galvanometer',
        },
      ],
    },
    {
      'questionText':
          'State the law used to determine the direction of magnetic field at the centre of current carrying circular coil.',
      'answers': [
        {
          'text':
              ' The right-hand thumb rule gives the direction of magnetic field which is stated as under: Curl the palm of your right hand around a circular wire with the fingers, pointing in the direction of the current and the right hand thumb gives the direction of magnetic field.',
        },
      ],
    },
    {
      'questionText':
          ' An ammeter and a milliammeter are converted from the same galvanometer. Out of the two, which current measuring instrument has higher resistance? (HOTS)',
      'answers': [
        {
          'text':
              ' The higher is the range, the lower will be the value of shunt, so a milliammeter will be having higher resistance.',
        },
      ],
    },
    {
      'questionText':
          ' What is the advantage of using radial magnetic field in a moving coil galvanometer? [HOTS)',
      'answers': [
        {
          'text':
              ' (i) Maximum torque is experienced.(ii) Current is directly proportional to the deflection.(iii) The plane of the coil is parallel to the direction of magnetic field.',
        },
      ],
    },
    {
      'questionText':
          'Why is it necessary for voltmeter to have a high resistance?',
      'answers': [
        {
          'text':
              ' Since voltmeter is to be connected across two points in parallel, if it has high resistance, than only a very small part of current will pass through and it will not affect the actual potential difference to be measured.',
        },
      ],
    },
    {
      'questionText': 'What is figure of merit of a galvanometer?',
      'answers': [
        {
          'text':
              'Figure of merit is defined as the amount of current which produces unit deflection in the galvanometer.',
        },
      ],
    },
    {
      'questionText': 'Define gyromagnetic ratio.',
      'answers': [
        {
          'text':
              ' It is the ratio of the magnetic dipole moment to the angular momentum of the electron revolving round the nucleus.',
        },
      ],
    },
    {
      'questionText':
          'Why can a galvanometer not be used as such to measure current in a given circuit? Write two reasons.',
      'answers': [
        {
          'text':
              ' (i) A galvanometer is a sensitive device and can measure up to few microampere, hence may get damaged, if strong current is passed through it. (Ii) A galvanometer has larger resistance than an ammeter. Therefore, when it is connected in series with the circuit, the current in the circuit decreases.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(MC());
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
