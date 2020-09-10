import 'package:class_app/Physics/Ch12-Atoms/physics.dart';
import 'package:flutter/material.dart';
import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class A2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AState2();
  }
}

class _AState2 extends State<A2> {
  final _questions = const [
    {
      'questionText': 'What is the distance of closest approach ?',
      'answers': [
        {
          'text':
              'The minimum distance up to which an energetic x- particle travelling directly towards a nucleus can reach.',
        },
      ],
    },
    {
      'questionText':
          'An electron in a hydrogen atom is revolving round a positively charged nucleus. Which two physical quantities explain the orbit of an electron?',
      'answers': [
        {
          'text':
              'Two physical quantities are (i) angular momentum, and (ii) total energy of electron.',
        },
      ],
    },
    {
      'questionText':
          'What will happen if an electron instead of revolving becomes stationary in H- atom ?',
      'answers': [
        {
          'text':
              'Then the electrostatic field of the nucleus will attract the electron into the nucleus itself.',
        },
      ],
    },
    {
      'questionText':
          'The energy of an electron in the ground state of hydrogen atom is – 13.6 Ev. What does the negative sign signify ?',
      'answers': [
        {
          'text':
              'The negative sign signifies that the electron is bound to the nucleus',
        },
      ],
    },
    {
      'questionText':
          'What is the value of ionization energy for hydrogen atom ?',
      'answers': [
        {
          'text': '13.6',
        },
      ],
    },
    {
      'questionText': ' What is the distance of closest approach?',
      'answers': [
        {
          'text':
              'The minimum distance up to which an energetic alpha – particle travelling directly towards a nucleus can reach.',
        },
      ],
    },
    {
      'questionText':
          'An electron in a hydrogen atom is revolving round a positively charged nucleus. Which two physical quantities explain the orbit of an electron?',
      'answers': [
        {
          'text':
              'Two physical quantities are (i) angular momentum and (ii) total energy of electron.',
        },
      ],
    },
    {
      'questionText':
          'What will happen if an electron instead of revolving becomes stationary in H-atom ?',
      'answers': [
        {
          'text': 'Then the electrostatic field of the nucleus will attract',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(A());
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
