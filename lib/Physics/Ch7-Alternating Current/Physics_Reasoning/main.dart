import 'package:class_app/Physics/Ch7-Alternating Current/physics.dart';
import 'package:flutter/material.dart';
import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class AC2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ACState2();
  }
}

class _ACState2 extends State<AC2> {
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
          'The power factor of an a.c circuit is 0.5. What is the phase difference between voltage and current in the circuit?[March 2016]',
      'answers': [
        {
          'text': 'Phase Angle=60 degrees',
        },
      ],
    },
    {
      'questionText':
          'For an ideal inductor, connected across a sinusoidal ac voltage source, state which one of the following quantity is zero:(i)instantaneous power, (ii)Average power over full cycle  of the ac voltage source [Compartment 2016]',
      'answers': [
        {
          'text': 'Average power over full cycle of the ac voltage source',
        },
      ],
    },
    {
      'questionText':
          'Why is the use of a.c. voltage preffered over d.c. voltage ? Give 2 reasons.[March 2014]',
      'answers': [
        {
          'text':
              '(i) AC can be transmitted with much lower energy losses as compared to dc. (ii) AC voltage can be adjusted (stepped-up or stepped down) as per requirement. (iii) AC current in a circuit can be controlled using (almost) wattless devices like choke coil. (iv) AC is easier to generate.',
        },
      ],
    },
    {
      'questionText':
          'Why is the use of ac voltage preferred over dc voltage? ( AI 2014)',
      'answers': [
        {
          'text':
              'An ac voltage can be stepped up or downusing a transformer, but not the dc voltage.',
        },
      ],
    },
    {
      'questionText':
          'Why is the use of ac voltage preferred over dc voltage ? [AI 2014]',
      'answers': [
        {
          'text':
              'An ac voltage can be stepped up or down using a transformer, but not the dc voltage.',
        },
      ],
    },
    {
      'questionText':
          'Can a capacitor of suitable capacitance replace a inductor coil in an AC circuit ?',
      'answers': [
        {
          'text':
              'Yes, because average power consumed in both is least while controlling an AC.',
        },
      ],
    },
    {
      'questionText':
          'When an alternating current is passed through a moving coil galvanometer,it shows no deflection. Why?',
      'answers': [
        {
          'text':
              'A moving coil galvanometer measures an average value of current, which is zero for ac. Hence, no deflection is shown by galvanometer.',
        },
      ],
    },
    {
      'questionText':
          'Is there are any device by which direct current can be controlled without any loss of energy?',
      'answers': [
        {
          'text': 'No. dc cannot be controlled without loss of energy.',
        },
      ],
    },
    {
      'questionText':
          'A 110 V dc heater is used on an ac source, such that the heat produced is the same. What would be the value of the alternating voltage?',
      'answers': [
        {
          'text':
              ' By the definition, value of the alternating voltage is equal to 110V.',
        },
      ],
    },
    {
      'questionText':
          'Can ever the rms value be equal to the peak value of an ac? ',
      'answers': [
        {
          'text': 'Yes, when the ac is a square wave.',
        },
      ],
    },
    {
      'questionText':
          'Does a step down transformer violate the principle of conservation of energy?',
      'answers': [
        {
          'text':
              'No. In a transformer, if a voltage is increased, the current is decreased in the same ratio and the product VI (power) remains the same.',
        },
      ],
    },
    {
      'questionText':
          'At an airport, a person is made to walk through the doorway of a metal detector, for security reasons. Is she/he is carrying anything made of metal, the metal detector emits a sound. On what principle does this detector work?',
      'answers': [
        {
          'text':
              'The metal detector works on the principle of resonances in ac circuits.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(AC());
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
            runApp(AC());
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
