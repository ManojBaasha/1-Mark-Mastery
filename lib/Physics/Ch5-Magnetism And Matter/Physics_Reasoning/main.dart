import 'package:class_app/Physics/Ch5-Magnetism And Matter/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class MM2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MMState2();
  }
}

class _MMState2 extends State<MM2> {
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
          'Why is the core of electromagnetic made of ferromagnetic materials?',
      'answers': [
        {
          'text':
              'Ferromagnetic materials have high magnetic permeability compared to air. Ferromagnetic core increases self inductance of the loop proportional to their relative permeability. Due to this reason, core of an electromagnet is made of ferromagnetic material',
        },
      ],
    },
    {
      'questionText':
          'Write the condition under which an electron will move undeflected in the presence of crossed electric and magnetic fields.[Compartment 2014]',
      'answers': [
        {
          'text': 'V=E/B,where v is the speed of the electron',
        },
      ],
    },
    {
      'questionText':
          'Which of the following substances are paramagnetic? Bi, Al, Cu,Ca, Pb and Ni',
      'answers': [
        {
          'text': 'Al and Ca.',
        },
      ],
    },
    {
      'questionText':
          ' The horizontal component of the earth’s magnetic field at a place is B and angle of dip is 60 degree. What is the value of vertical component of earth’s magnetic field at equator ? ( Delhi 2012 ).',
      'answers': [
        {
          'text': 'Zero.',
        },
      ],
    },
    {
      'questionText':
          'Mention the two characteristics properties of the material suitable for making core of a transformer.  ( AI 2012 )',
      'answers': [
        {
          'text':
              '(i) Resistance should be less.(ii) Torsional constant should be less',
        },
      ],
    },
    {
      'questionText':
          'What is the characteristics property of a diamagnetic material ? ( Foreign 2010)',
      'answers': [
        {
          'text':
              'When a diamagnetic material is placed in an external magnetic field it gets feebly magnetised in a direction opposite to the field applied.',
        },
      ],
    },
    {
      'questionText':
          'Why should the material used for making permanent magnets have high coercivity?',
      'answers': [
        {
          'text': 'So that it does not get demagnetise easily.',
        },
      ],
    },
    {
      'questionText':
          ' A small magnet is pivoted to move freely in the magnetic meridian. At what place on the surface of the earth will the magnet be vertical ? ( Foreign 2012)',
      'answers': [
        {
          'text': 'At poles',
        },
      ],
    },
    {
      'questionText':
          'The permeability of a magnetic material is 0.9983. Name the type of magnetic materials it represent. ( Delhi 2011)',
      'answers': [
        {
          'text': 'Diamagnetic',
        },
      ],
    },
    {
      'questionText':
          'The susceptibility of a magnetic material is 1.9 x 10 ^-5 . Name the  type of magnetic materials it represents.',
      'answers': [
        {
          'text': 'Paramagnetic',
        },
      ],
    },
    {
      'questionText':
          'Steel is preferred for making for making permanent magnets , whereas soft iron is preferred for making electromagnets. Give one reason.',
      'answers': [
        {
          'text': ' Coercivity of steel is high and that of soft iron is less.',
        },
      ],
    },
    {
      'questionText':
          ' What is the value of the horizontal component of the earth’s magnetic field at magnetic poles?',
      'answers': [
        {
          'text': 'Zero',
        },
      ],
    },
    {
      'questionText':
          ' What is the apparent angle of dip in a direction perpendicular to the magnetic meridian?',
      'answers': [
        {
          'text': '90 degrees',
        },
      ],
    },
    {
      'questionText':
          'Which orientation of a magnetic diole in a uniform magnetic field will correspond to its stable equilibrium? [HOTS]',
      'answers': [
        {
          'text':
              'In stable equilibrium, the dipole moment vector and the magnetic field vector are in same direction.',
        },
      ],
    },
    {
      'questionText':
          'Which of the following substances are diamagnetic? Bi, Al, Na, Cu, Ca and Ni [Delhi 2013]',
      'answers': [
        {
          'text': ' Bi and Cu.',
        },
      ],
    },
    {
      'questionText':
          'A magnetic needle, free to rotate in a vertical plane, orients itself vertically at a certain place on the Earth. What are the values of (i) horizontal component of earth’s magnetic field, and (ii) angle of dip at this placed?',
      'answers': [
        {
          'text': '(i) Zero (ii) 90°',
        },
      ],
    },
    {
      'questionText':
          'How does the (i) pole strength and (ii) magnetic moment of each part of a bar magnet change if it is cut into two equal pieces along its length? [HOTS]',
      'answers': [
        {
          'text':
              '(i) The pole strength becomes half.(ii) The magnetic magnet becomes half.',
        },
      ],
    },
    {
      'questionText':
          'What are permanent magnets? Give one example.[Delhi 2013]',
      'answers': [
        {
          'text':
              'Permanent magnets are the materials which retain their ferromagnetic properties for a long time at room temperature, e.g. a bar magnet.',
        },
      ],
    },
    {
      'questionText':
          ' What is the angle of dip at a place where the horizontal and vertical components of the earths magnetic field are equal? [Foreign 2012]',
      'answers': [
        {
          'text': ' Angle of dip is 45°.',
        },
      ],
    },
    {
      'questionText':
          'The susceptibility of a magnetic material is - 4.2 x 10 ^-6. Name the type of magnetic material it represents.[Delhi 2011]',
      'answers': [
        {
          'text': 'Diamagnetic.',
        },
      ],
    },
    {
      'questionText':
          'Two identical looking iron bars A and B are given, one of which is definitely known to be magnetised. (We do not know which one.) How would one ascertain which one? [Use nothing else but the bars A and B.]  ',
      'answers': [
        {
          'text':
              'Let, two bars are A and B. Now, bring one end of A near to B, and move it slowly (from one end to the middle). If force experienced by bar A reduces as we move towards middle, then bar B is magnetised, and A is not. If A experiences repulsion, then both the bars are magnetised.',
        },
      ],
    },
    {
      'questionText':
          ' What happens if a bar magnet is cut into two pieces: (i) transverse to its length . (ii) along its length ?',
      'answers': [
        {
          'text':
              ' In either case, one gets two magnets, each with a north and south pole.',
        },
      ],
    },
    {
      'questionText':
          'Does a bar magnet exert a toque on itself due to its own field? Does on element of a current-carrying wire exert a force on another element of the same wire?',
      'answers': [
        {
          'text':
              'No. There is no force or torque on a element due to the field produced by that element itself. But there is a force (or torque) on an element of the same wire.',
        },
      ],
    },
    {
      'questionText':
          'A magnetised needle in a uniform magnetic field experiences a torque but no net force. An iron nail near a bar magnet, however, experiences a force of attraction in addition to a torque. Why?',
      'answers': [
        {
          'text':
              'No force, if the field is uniform. The iron nail experiences a non-uniform field due to the bar magnet. There is induced magnetic moment in the nail, therefore, it experiences both force and torque. The net force is attractive because the induced south pole (say) in the nail is closer to the north pole of magnet than induced north pole.',
        },
      ],
    },
    {
      'questionText':
          'Must every magnetic configuration have a north pole and a south pole? What about the field due to a toroid?',
      'answers': [
        {
          'text':
              'Not necessarily. True only if the source of the field has a net non-zero magnetic moment. This is not so for a toroid or even for a straight infinite conductor.',
        },
      ],
    },
    {
      'questionText':
          'Magnetic field arises due to charges in motion. Can a system have magnetic moments even though its net charge is zero?',
      'answers': [
        {
          'text':
              'Yes. The average of the charge in the system may be zero. Yet, the mean of the magnetic moments due to various current loops may not be zero. In paramagnetic material, the atoms have net dipole moment though their net charge is zero.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(MM());
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
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                runApp(MM());
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
