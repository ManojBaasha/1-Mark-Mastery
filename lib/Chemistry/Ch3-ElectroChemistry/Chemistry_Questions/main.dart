import 'package:class_app/Chemistry/Ch3-ElectroChemistry/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class EC2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ECState2();
  }
}

class _ECState2 extends State<EC2> {
  final _questions = const [
    {
      'questionText': 'What is primary cell? Give an example.',
      'answers': [
        {
          'text':
              'It is a cell in which products cannot be changed back into reactants, i.e. it is not a rechargeable. e.g. dry cell and mercury cell. In this cell, electrical energy is produced by the redox reaction occurring in the cell.',
        },
      ],
    },
    {
      'questionText': 'What are secondary cells? [AI2014]',
      'answers': [
        {
          'text':
              'Those cells which are rechargeable, i.e. products can be converted back into reactants.  ',
        },
      ],
    },
    {
      'questionText':
          'Arrange the following metals in the order in which they displace each other from the solution of their salts.Al, Cu, Fe, Mg and Zn.',
      'answers': [
        {
          'text':
              'Mg, Al, Zn, Fe, Cu is the decreasing order of their reactivity.',
        },
      ],
    },
    {
      'questionText':
          'Can absolute electrode potential of an electrode be measured?',
      'answers': [
        {
          'text':
              'No, because electro potential of a single electron cannot be mentioned.',
        },
      ],
    },
    {
      'questionText': 'What is meant by cell constant?',
      'answers': [
        {
          'text':
              'It is the ratio of distance between electrodes to the area of cross section.',
        },
      ],
    },
    {
      'questionText': 'HCl does not give acidic solution in benzene. Why ?',
      'answers': [
        {
          'text':
              'It does not dissociates ions in benzene ( non-polar solvent ).',
        },
      ],
    },
    {
      'questionText':
          'Unlike dry cell, the memory cell has a constant cell potential throughout in, useful life. Why?',
      'answers': [
        {
          'text':
              'It is because ions are not involved in overall cell reaction of memory cell, therefore , concentration does not change.',
        },
      ],
    },
    {
      'questionText':
          'Why is aluminium metal cannot be obtained by electrolysis of an aqueous solution of salt of aluminium? ',
      'answers': [
        {
          'text':
              'It is because hydrogen gas will be informed due to higher reduction potential.',
        },
      ],
    },
    {
      'questionText': 'What is meant by Faraday constant?',
      'answers': [
        {
          'text': 'It is total charge on 1 mole of electrons [ I F = 96500 C]',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(EC());
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
