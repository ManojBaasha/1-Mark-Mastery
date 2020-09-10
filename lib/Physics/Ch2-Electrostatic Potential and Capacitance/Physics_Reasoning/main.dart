import 'package:class_app/Physics/Ch2-Electrostatic Potential and Capacitance/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class ES2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ESState2();
  }
}

class _ESState2 extends State<ES2> {
  final _questions = const [
    {
      'questionText':
          'Each question in this section consist only of the basic definitions of the chapter. For each question Press the answer to move to the next question',
      'answers': [
        {
          'text': 'Start',
        },
      ],
    },
    {
      'questionText':
          'In which situation is there a displacement current but no conduction current but no conduction current.[March 2016]',
      'answers': [
        {
          'text': 'Between plates of capacitor during chargeing/discharging',
        },
      ],
    },
    {
      'questionText':
          'An electron is accelerated through a potential difference V. Write the expression for its final speed, if it was initially at rest.[Compartment 2018]',
      'answers': [
        {
          'text': 'v=(2eV/m)^1/2',
        },
      ],
    },
    {
      'questionText':
          'Work done in taking an electron around a proton in a circular loop is zero. Should the proton necessarily be at the centre of the circular loop?',
      'answers': [
        {
          'text': 'No , because electrostatic force is a conservative force.',
        },
      ],
    },
    {
      'questionText':
          'Why is it necessary that the field lines from a point charge placed in the vicinity of a conductor must be normal to the surface of the conductor at every point ?',
      'answers': [
        {
          'text':
              'The surface of a conductor is equi-potential and the field lines cannot be at any angle but perpendicular to the surface.',
        },
      ],
    },
    {
      'questionText':
          'In which orientation , a dipole placed in a uniform electric field is in (i)stable (ii) unstable equilibrium ?',
      'answers': [
        {
          'text':
              '(i) When dipole moment vector is parallel to electric field (ii) When dipole moment vector is antiparallel to electric field.',
        },
      ],
    },
    {
      'questionText':
          'While defining the electrostatic potential energy, why do we bring  a unit positive charge from infinity ?',
      'answers': [
        {
          'text':
              'Because at infinity, the electrostatic forces are zero. Therefore, the electrostatic potential energy is also zero.',
        },
      ],
    },
    {
      'questionText':
          'What is the work done in moving a test charge q through a distance of 1 can along the equatorial axis of an electric dipole?',
      'answers': [
        {
          'text': 'Zero',
        },
      ],
    },
    {
      'questionText':
          'A metal sphere is surrounded by an uncharged concentric thin spherical shell with a charge q and the potential difference between them is V. What is the new potential difference between them, if the shell is now given an additional charge q?',
      'answers': [
        {
          'text':
              'The potential difference remains unchanged, because the addition of charge q will increase the potential of both spherical shell and metal sphere by an equal amount.',
        },
      ],
    },
    {
      'questionText':
          'Why is electrostatic potential constant throughout the volume of the conductor and has the same value (as inside) on its surface? [Delhi 2012]',
      'answers': [
        {
          'text':
              'As we know that the electrostatic field inside the conductor is zero and on the surface, the field is normal to the surface at every point (Gausss theorem). No work is done in moving a small test charge, within the conductor and on its surface. We find there is no potential difference between the two points inside or on the surface, which implies the potential being constant throughout.',
        },
      ],
    },
    {
      'questionText':
          'What is the geometrical shape of equipotential surfaces due to a single isolated charge? [Delhi 2013]',
      'answers': [
        {
          'text': 'The geometrical shape is spherical.',
        },
      ],
    },
    {
      'questionText':
          'Why is there no work done in moving a charge from one point to another on an equipotential surface?',
      'answers': [
        {
          'text':
              'Potential difference between any two points of an equipotential surface is zero. So no work is done in moving a charge from one point to another.',
        },
      ],
    },
    {
      'questionText':
          'Can two equipotential surfaces intersect each other? Justify your answer. [Delhi 2011C]',
      'answers': [
        {
          'text':
              'Two equipotential surfaces cannot intersect. The direction of electric field is always perpendicular to the equipotential surface. If they intersect, there will be two directions of the electric field at the point of intersection which is not possible.',
        },
      ],
    },
    {
      'questionText':
          'Why is electrostatic potential energy of a pair of like point charges positive?',
      'answers': [
        {
          'text':
              ' Because the work has to be done against the electrostatic force of repulsion.',
        },
      ],
    },
    {
      'questionText':
          'Why should electrostatic field be zero inside a conductor? [Delhi 2012 ]',
      'answers': [
        {
          'text':
              'In the static situation, there is no current inside, or on the surface of the conductor. Hence, electric field is zero everywhere inside the conductor.',
        },
      ],
    },
    {
      'questionText':
          'Why does the electric field inside a dielectric decrease when it is placed in an external electric field?',
      'answers': [
        {
          'text':
              'An electric field is developed inside the dielectric due to induction in a direction opposite to the direction of external electric held. Thus, net electric field decreases.',
        },
      ],
    },
    {
      'questionText':
          'If electric field at a point equals to zero, must the electric potential at that point be zero?',
      'answers': [
        {
          'text':
              'No. Inside a charged conducting sphere, E = 0, but the potential is constant and is not zero.',
        },
      ],
    },
    {
      'questionText':
          'A hollow metal sphere of radius 5 cm is charged such that the potential on its surface is 10 V. What is the potential at the centre of the sphere? (AI 2011)',
      'answers': [
        {
          'text':
              '10 V, as the potential inside the hollow metal sphere is same everywhere.',
        },
      ],
    },
    {
      'questionText':
          ' Define dielectric strength of a medium. What is its value for vacuum?',
      'answers': [
        {
          'text':
              ' It is the maximum value of electric field that can exist inside a dielectric without causing its electrical breakdown. For vacuum, its value is infinity.',
        },
      ],
    },
    {
      'questionText':
          'A charge q is moved from a point A above dipole of dipole moment P to a point B below the dipole in equatorial plane without acceleration. Find the work done in the process. [AI 2016)',
      'answers': [
        {
          'text':
              'The work done is zero, as electrostatic potential at any point in equitorial plane is zero.',
        },
      ],
    },
    {
      'questionText':
          'If the plates of a charged capacitor be suddenly connected to each other by a wire, what will happen?',
      'answers': [
        {
          'text':
              'Capacitor will be discharged immediately, and the part of electrical energy will be converted in the form of heat and light (sparks will be produced).',
        },
      ],
    },
    {
      'questionText':
          'Name the physical quantity whose SI unit is F m ^-1 (farad metre).',
      'answers': [
        {
          'text': ' Electrical permittivity.',
        },
      ],
    },
    {
      'questionText': ' Where does the energy of a capacitor reside?',
      'answers': [
        {
          'text': 'Electrical energy resides in the space, within the plates',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(ES());
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
