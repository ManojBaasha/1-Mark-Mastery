import 'package:class_app/Chemistry/Ch13-Amines/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class A2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AState2();
  }
}

class _AState2 extends State<A2> {
  final _questions = const [
    {
      'questionText':
          'Why is an alkylamine more basic than ammonia? (Delhi 2009)',
      'answers': [
        {
          'text':
              'Due to electron releasing inductive effect (+1) of alkyl group, the electron density on the nitrogen atom increases and thus, it can donate the lone pair of electrons more easily than ammonia.',
        },
      ],
    },
    {
      'questionText':
          'The conversion of primary aromatic amines into diazonium salts is known as (All India 2014)',
      'answers': [
        {
          'text': 'Diazotization.',
        },
      ],
    },
    {
      'questionText': 'Give one use of quaternary ammonium salts.',
      'answers': [
        {
          'text':
              'Quaternary ammonium salts are widely used for manufacture of synthetic detergents.',
        },
      ],
    },
    {
      'questionText':
          'The IUPAC name of secondary amine having lowest molecular mass is _________.',
      'answers': [
        {
          'text': ' N- Methylmethanamine.',
        },
      ],
    },
    {
      'questionText': 'Write one use of diazonium salt',
      'answers': [
        {
          'text':
              'Diazonium salts are used in preparation of substituted aromatic compounds.',
        },
      ],
    },
    {
      'questionText':
          'How can the reactivity of aromatic amines be controlled?',
      'answers': [
        {
          'text':
              'The reactivity of aromatic amines can be controlled by acylation.',
        },
      ],
    },
    {
      'questionText': 'Give one use of tertiary amines.',
      'answers': [
        {
          'text':
              'Tertiary amines like trimethylamine are used as insect attractants.',
        },
      ],
    },
    {
      'questionText':
          'Name a reagent which can distinguish between primary, secondary and tertiary amine',
      'answers': [
        {
          'text':
              'P- Toluenesulphonyl chloride Hinsberg reagent can be used as a distinguishing reagent for primary, secondary and tertiary amines.',
        },
      ],
    }
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
