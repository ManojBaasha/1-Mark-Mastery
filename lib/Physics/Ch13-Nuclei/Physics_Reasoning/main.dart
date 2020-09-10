import 'package:class_app/Physics/Ch13-Nuclei/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class N2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NState2();
  }
}

class _NState2 extends State<N2> {
  final _questions = const [
    {
      'questionText':
          'Why is it found experimentally difficult to detect neutrinos in nuclear beta-decay?[March 2014]',
      'answers': [
        {
          'text':
              'Neutrinoes are neutral,massless particles that hardly interact with matter.',
        },
      ],
    },
    {
      'questionText': 'Define the binding energy of the nucleus.',
      'answers': [
        {
          'text': 'It is defined as the energy equivalent to mass defect.',
        },
      ],
    },
    {
      'questionText':
          ' Two nuclei have mass numbers in the ratio 2 : 5 .What is the ratio of their  nuclear densities?',
      'answers': [
        {
          'text':
              'Nuclear density is independent of mass number. So, the ratio will be 1:1.',
        },
      ],
    },
    {
      'questionText':
          'What is the relation between the binding energy per nucleon and stability of a nucleus?',
      'answers': [
        {
          'text':
              'The larger the binding energy per nucleon, the more stable is the nucleus.',
        },
      ],
    },
    {
      'questionText':
          'Write any two characteristic properties of nuclear force. (AI 2012, 13)',
      'answers': [
        {
          'text':
              'The following are the two characteristic properties:(i) Nuclear force is a short range force.(ii) Nuclear forces show the saturation effect.',
        },
      ],
    },
    {
      'questionText':
          'Define the activity of a given radioactive substance. Write its SI unit.',
      'answers': [
        {
          'text':
              'The rate of disintegration or count rate of sample of radioactive material is called activity. The SI unit of activity is becquerel (Bq).',
        },
      ],
    },
    {
      'questionText':
          'Write the necessary condition required for fusion reaction',
      'answers': [
        {
          'text':
              '(i) Nuclear fusion will occur when the kinetic energy of colliding nuclei is enough to overcome the strong electrostatic forces of repulsion between the protons. For this, high temperature is required.(ii) The density of nuclei should also be very high to increase the number of collisions.',
        },
      ],
    },
    {
      'questionText': 'What is the effect of temperature on radioactivity?',
      'answers': [
        {
          'text': ' No effect. Radioactivity is independent of temperature.',
        },
      ],
    },
    {
      'questionText':
          'What is the difference between an electron and a Beta-particle ?',
      'answers': [
        {
          'text':
              'An electron resides outside the nucleus, whereas Beta –particle is an electron like particle of nuclear origin.',
        },
      ],
    },
    {
      'questionText': 'What is the source of stellar energy ?',
      'answers': [
        {
          'text': 'Nuclear fusion reactions.',
        },
      ],
    },
    {
      'questionText':
          'Four nuclei of an element fuse together to form a heavier nucleus. If the process is accompanied by the release of energy, which of the two- the parent or the daughter nucleus would have a higher binding energy/ nucleons?',
      'answers': [
        {
          'text': 'Daughter nucleus',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(N());
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
