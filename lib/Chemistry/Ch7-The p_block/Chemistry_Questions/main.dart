import 'package:class_app/Chemistry/Ch7-The p_block/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class P2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PState2();
  }
}

class _PState2 extends State<P2> {
  final _questions = const [
    {
      'questionText':
          'Out of white phosphorus and red phosphorus, which one is more reactive and why? [AI 2015 Allahabad & Dehradun; DoE] ',
      'answers': [
        {
          'text':
              'White phosphorus is more reactive as it is monomeric and has less bond dissociation energy',
        },
      ],
    },
    {
      'questionText':
          'Why is the single N-N bond weaker than the single P-P bond?[Foreign 2014]',
      'answers': [
        {
          'text':
              'It is due to more repulsion between valence electrons of N due to smaller bond length than P-P bond.',
        },
      ],
    },
    {
      'questionText':
          'Fluorine does not exhibit any positive oxidation state. Why?[Delhi 2013, AI 2010]',
      'answers': [
        {
          'text':
              'It is because Fluorine is most electronegative element and best oxidising agent.',
        },
      ],
    },
    {
      'questionText':
          'Explain giving a reason for the following situation: In aqueous medium, HCl is a stronger acid than HF.[Foreign 2011] ',
      'answers': [
        {
          'text':
              'It is because bond dissociation energy of H-Cl is lower than HF due to longer bond length.',
        },
      ],
    },
    {
      'questionText':
          'Which is a stronger acid in aqueous solution , HCl or HI , and why ? [ Foreign 2010]',
      'answers': [
        {
          'text':
              'HI is stronger acid than HCl in aqueous solution because it has lower bond dissociation energy due to longer bond length.',
        },
      ],
    },
    {
      'questionText': 'Why are the elements of Group 18 known as noble gases?',
      'answers': [
        {
          'text':
              'It is because they do not react easily due to high ionisation energy which is due to stable electronic configuration.',
        },
      ],
    },
    {
      'questionText': 'Noble gases have very low boiling points. Why ?',
      'answers': [
        {
          'text':
              'It is due to weak van der Waals’ forces of attraction because they are non-polar.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(P());
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
