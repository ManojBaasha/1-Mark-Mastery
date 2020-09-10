import 'package:class_app/Chemistry/Ch11-Alcohols,Phenols And Ethers/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class APE2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _APEState2();
  }
}

class _APEState2 extends State<APE2> {
  final _questions = const [
    {
      'questionText':
          'Illustrate with examples the limitations of Williamson’s synthesis for the preparation of certain types of ethers.',
      'answers': [
        {
          'text':
              'Di- tertiary butyl ether cannot be prepared by Williamson’s synthesis because tertiary halides will undego elimination reaction instead of substitution reaction.',
        },
        {
          'questionText':
              'Arrange the following in the increasing order of their acidic strength:'
                  '(i) p-cresol, p-nitrophenol, phenol'
                  ' (ii) Propan-1-ol, 2,4,6-trinitrophenol, 3-nitrophenol, 3,5-dinitrophenol, phenol, 4-methylphenol.',
          'answers': [
            {
              'text': '(i) p-cresol < phenol < p-nitrophenol'
                  '(ii) Propan-1-ol < 4-methylphenol < phenol < 3-nitrophenol < 3,5-dinitrophenol < 2,4, 6-trinitrophenol.',
            },
          ],
        },
        {
          'questionText':
              'Ortho nitrophenol has lower boiling point than p-nitrophenol. Why ? (Comptt. Delhi 2012)',
          'answers': [
            {
              'text':
                  'Ortho-nitrophenol has lower boiling point due to formation of intramolecular H-bonding whereas p-nitrophenol forms intermoleeular H-bonding.',
            },
          ],
        },
        {
          'questionText':
              'Ortho-nitrophenol is more acidic than ortho-methoxyphenol. Why? (Comptt. Delhi 2012)',
          'answers': [
            {
              'text':
                  'NO2 group is an electron withdrawing group while methoxy group is electron donating in nature. The release of H+ is easier from O-nitrophenol while it is difficult from O-methoxyphenol.',
            },
          ],
        },
        {
          'questionText':
              'The C-O bond is much shorter in phenol than in ethanol. Give reason. (Comptt. Delhi 2012)',
          'answers': [
            {
              'text':
                  'Carbon of C-O bond of phenol is Sp2 hybridised, so it acquires a partial double bond character but in ethanol it is Sp3 hybridised and a single bond. Double bond is shorter than a single bond.',
            },
          ],
        },
        {
          'questionText':
              'Of the two hydroxy organic compounds ROH and R’OH, the first one is basic and other is acidic in behaviour. How is R different from R’? (Comptt. Delhi 2013)',
          'answers': [
            {
              'text':
                  'When R = alkyl, ROH behaves as a bronsted base and when R’ = aryl, R’OH behaves as a bronsted acid.',
            },
          ],
        },
        {
          'questionText':
              'Give a chemical test to distinguish between 2-Pentanol and 3-Pentanol. (Comptt. Delhi 2013)',
          'answers': [
            {
              'text':
                  '2-pentanol gives Iodoform test with yellow ppt. of Iodoform while 3-pentanol does not give this test.',
            },
          ],
        },
        {
          'questionText':
              'Which of the following isomers is more volatile : o-nitrophenol or p-nitrophenol? (Delhi 2014)',
          'answers': [
            {
              'text':
                  'o-nitrophenol is more volatile than p-nitrophenol due to intramolecular hydrogen bonding.',
            },
          ],
        },
        {
          'questionText':
              'Give simple chemical tests to distinguish between the following pairs of compounds: Benzoic acid and Phenol (All India 2017)',
          'answers': [
            {
              'text':
                  'Ferric chloride test. Add neutral FeCl3 in both the solutions, phenol reacts with neutral FeCl3 to form an iron-phenol complex giving violet colour but benzoic acid does not.',
            },
          ],
        },
        {
          'questionText': 'What is denatured alcohol?',
          'answers': [
            {
              'text': 'Industrial alcohol (ethyl alcohol) is made unfit for drinking purpose by addition of a'
                  'small quantity of poisonous substance, methanol. This is called denatured alcohol. For'
                  'denaturation, copper sulphate or pyridine can also be added.',
            },
          ],
        },
        {
          'questionText': 'Mention two important uses of methanol',
          'answers': [
            {
              'text': '(i) It is used for denaturing alcohol.'
                  '(ii) It is used as a solvent for paints & varnishes.',
            },
          ],
        },
        {
          'questionText': 'What is wood sprit? Why is it so called?',
          'answers': [
            {
              'text':
                  'Wood spirit is methanol. It is so called because earlier it was obtained from destructive'
                      'distillation of wood only.',
            },
          ],
        },
        {
          'questionText': 'Identify allylic alcohols in the above examples.',
          'answers': [
            {
              'text':
                  'The alcohols given in (ii) and (vi) are allylic alcohols.',
            },
          ],
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(APE());
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
