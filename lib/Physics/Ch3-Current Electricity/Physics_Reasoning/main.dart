import 'package:flutter/material.dart';
import 'package:class_app/Physics/Ch3-Current Electricity/physics.dart';
import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class CE2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CEState2();
  }
}

class _CEState2 extends State<CE2> {
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
          'Two wires one of copper and other of manganin have same resistance and equal length . Which wire is thicker and Why?[March 2016]',
      'answers': [
        {
          'text': '(i)Manganin  (ii)R=pl/A==>as p increases A also increases',
        },
      ],
    },
    {
      'questionText':
          'Nichrome and copper wires of same length and radius are connected in series. Current I is passed through them. Which wire gets heated up more?Justify Your Answer[March2017]',
      'answers': [
        {
          'text': '(i)Nichrome ,Resistivity of Ni > Resistivity of Cu',
        },
      ],
    },
    {
      'questionText':
          'Using the concept of force between 2 infinitely long parallel current carrying conductors, define 1 ampere of current.[March 2014]',
      'answers': [
        {
          'text':
              'One ampere of current is the value of steady current which when maintained in each in each of the two very long straight parallel conductors of negligible cross section and placed one metre apart in vaccum, would produce on each of these conductors a force equal to 2x10^-7 N/m of its length',
        },
      ],
    },
    {
      'questionText':
          'How does one explain the resistivity of a metal with increase of temperature?[Compartment 2014]',
      'answers': [
        {
          'text':
              'With increase in temperature, the relaxation time decreases and hence the resistivity increases ',
        },
      ],
    },
    {
      'questionText':
          'How can we increase the sensitivity of a potentiometer ?',
      'answers': [
        {
          'text':
              'By reducing potential gradient. Potential gradient can be reduced by (i)increasing length of the wire and  (ii) reducing current in the main circuit.',
        },
      ],
    },
    {
      'questionText':
          'A cell of negligible internal resistance is connected in series to the wire of a potentiometer.  If potentiometer wire is changed and its place another wire of different material having diameter twice of the first wire is used keeping the length constant, then how the balance point will change?',
      'answers': [
        {
          'text': 'Balance point will not change.',
        },
      ],
    },
    {
      'questionText': 'Why do bends in a wire not affect its resistance ?',
      'answers': [
        {
          'text':
              'As the mean free path of free electron in a wire is much less than the radius of curvature of the bend, it does not offer any resistance.',
        },
      ],
    },
    {
      'questionText':
          'Two materials , Si and Cu, are cooled from 300K to 60K. What will be the effect on their resistivity?',
      'answers': [
        {
          'text':
              'As the resistivity of a metal is directly proportional to the temperature , therefore on cooling the copper , its resistivity decreases.',
        },
      ],
    },
    {
      'questionText':
          'Why is the potentiometer preferred to a voltmeter for measuring emf of a cell ?',
      'answers': [
        {
          'text':
              'Emf measured by the potentiometer is more accurate because the cell is in open circuit giving no current.',
        },
      ],
    },
    {
      'questionText': 'Why copper is not used for making potentiometer wires ?',
      'answers': [
        {
          'text':
              'The resistivity of copper increases with the rise in temperature, hence it is not preferred.',
        },
      ],
    },
    {
      'questionText':
          'When electrons drift in a metal from lower to higher potential, does it mean that all the free electrons of the metal are moving in the same direction? (NCERT Example; Delhi 2012]',
      'answers': [
        {
          'text':
              'No. As the collision is a random process, the electrons cannot get deflected in the same direction.',
        },
      ],
    },
    {
      'questionText':
          'A steady current flows in a metallic conductor of non-uniform cross-section. Which of these quantities is constant along the conductor: current, current density, drift speed and electric field?',
      'answers': [
        {
          'text':
              ' Current, because in series, the current is same throughout the wire.',
        },
      ],
    },
    {
      'questionText':
          'The electron drift arises due to the force experienced by electrons in the electric field inside the conductor. But force should cause acceleration. Why then do the electrons acquire a steady average drift speed?',
      'answers': [
        {
          'text':
              'An electron does accelerate but loose its drift speed during the subsequent collisions with a positive ion of the metal. Therefore, it is the average drift speed which is acquired by the electron.',
        },
      ],
    },
    {
      'questionText':
          'The electron drift speed is estimated to be only a few mm s - 1 for currents in the range of a few amperes? How then is current established almost the instant a circuit is closed?',
      'answers': [
        {
          'text':
              'It is the electric field which spreads throughout a circuit with speed of light. At every point, a local election drift is induced by the held. This way, the current attains its steady value almost instantaneously.',
        },
      ],
    },
    {
      'questionText':
          'Is there a net field inside the cell when the circuit is closed and a steady current passes through? Explain.',
      'answers': [
        {
          'text':
              'When circuit is closed from outside, the current flows in the direction of electrostatic field outside, and opposite to the direction of electrostatic field inside the cell. The latter fact shows that there is a net hield inside the cell opposite to the electrostatic field.',
        },
      ],
    },
    {
      'questionText': 'Why resistance becomes more in series combination?',
      'answers': [
        {
          'text':
              'It is due to the increase in effective length of the conductor, because R x l.',
        },
      ],
    },
    {
      'questionText': 'How can we increase the sensitivity of a potentiometer?',
      'answers': [
        {
          'text':
              ' By reducing potential gradient. Potential gradient can be reduced by (i) increasing length of the wire, and (ii) reducing current in the main circuit.',
        },
      ],
    },
    {
      'questionText':
          'A cell of negligible internal resistance is connected in series to the wire of a potentiometer. If potentiometer wire is changed and in its place another wire of different material having diameter twice of the first wire is used keeping the length constant , then how the balance point will change ?',
      'answers': [
        {
          'text': 'Balance point will not change.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(CE());
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
                runApp(CE());
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
