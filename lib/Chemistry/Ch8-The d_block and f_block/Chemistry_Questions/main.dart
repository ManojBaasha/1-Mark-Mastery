import 'package:class_app/Chemistry/Ch8-The d_block and f_block/Chemistry.dart';
import 'package:flutter/material.dart';
import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class DF2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DFState2();
  }
}

class _DFState2 extends State<DF2> {
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
          'There is hardly any increase in atomic size with increasing atomic numbers in a series of transition metals. Give reason.[AI 2012]',
      'answers': [
        {
          'text':
              'It is because effective nuclear charge does not increase appreciably as pairing of electrons in d-orbitals take place which cause repulsion after Mn(25) ',
        },
      ],
    },
    {
      'questionText':
          'On what ground can you say that scandium (2 = 21) is a   transition element but zinc (Z = 30) is not?[NCERT Example; AI 2010C]',
      'answers': [
        {
          'text':
              'It is because Sc (21) has incompletely filled d-orbital, that is why it is transition element, whereas Zn(30) does not have incompletely filled d-orbitals, therefore, it is not regarded as transition element. ',
        },
      ],
    },
    {
      'questionText':
          'Why do transition metals show variable oxidation states? [Delhi 2016, 14C] ',
      'answers': [
        {
          'text':
              'It is because electrons from both s and d-orbitals can take part in bond formation.',
        },
      ],
    },
    {
      'questionText':
          'Lanthanoids form primarily +3 ions, while the actinoids usually have higher oxidation states in their compounds, +4 or even +6 being typical.  Give reason. [Delhi 2012] ',
      'answers': [
        {
          'text':
              'In Actinoids, 5f, 6d and 7s orbitals have comparable energies and electrons from these orbitals can take part to show higher oxidation states.',
        },
      ],
    },
    {
      'questionText':
          'Among lanthanoids, Ln(III) compounds are predominant. However, occasionally in solutions or in solid compounds, +2 and +4 ions are also obtained. Give reason. [AI 2012]',
      'answers': [
        {
          'text':
              'Lanthanoids show +3 oxidation state mostly as 2 electrons from outer  6s orbital and one electron from 5d orbital take part in bond formation. Some show +2 and +4 oxidation states due to stability of half filled and completely filled 4f orbitals.',
        },
      ],
    },
    {
      'questionText':
          'Why does copper not replace hydrogen from acids?[NCERT Exemplar Problem].',
      'answers': [
        {
          'text':
              'It is because copper is less reactive than hydrogen and has +ve value of reduction potential.',
        },
      ],
    },
    {
      'questionText':
          'Reactivity of transition elements decreases almost regularly from Sc to Cu. Explain.',
      'answers': [
        {
          'text':
              'It is due to increase in ionisation enthalpy, tendency to lose electron decreases, therefore , reactivity decreases.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(DF());
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

    return WillPopScope(
      onWillPop: () {
        runApp(DF());
      },
      child: MaterialApp(
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
              runApp(DF());
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
            ),
            heroTag: "Back",
          ),
        ),
      ),
    );
  }
}
