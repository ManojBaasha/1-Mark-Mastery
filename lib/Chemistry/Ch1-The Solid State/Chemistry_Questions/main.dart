import 'package:class_app/Chemistry/Ch1-The Solid State/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class SS2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SSState2();
  }
}

class _SSState2 extends State<SS2> {
  final _questions = const [
    {
      'questionText': 'Why are crystalline solids anisotropic?[AI 2014C]',
      'answers': [
        {
          'text':
              'It is due to different arrangement of particles in different directions.',
        },
      ],
    },
    {
      'questionText':
          'What type of interactions hold the molecules in polar molecular solids? [AI 2010]',
      'answers': [
        {
          'text': 'Dipole-dipole interactions.',
        },
      ],
    },
    {
      'questionText':
          'Refractive index of a solid is observed to have the same value along all directions.. Would it show cleavage property? ',
      'answers': [
        {
          'text': 'Amorphous solid. It would not show cleavage property. ',
        },
      ],
    },
    {
      'questionText':
          'What is maximum possible coordination number of an atom in an hcp crystal structure of an element?',
      'answers': [
        {
          'text': '12',
        },
      ],
    },
    {
      'questionText':
          'What type of stoichiometric defect is shown by NaCl? [Delhi 2014C] ',
      'answers': [
        {
          'text': 'Schottky defect.',
        },
      ],
    },
    {
      'questionText':
          'What type of stoichiometric defect is shown by AgBr and AgI? [AI 2012C) ',
      'answers': [
        {
          'text':
              'Frenkel defects are shown by AgBr and Agl. Ag Br shows Schottky defect also. ',
        },
      ],
    },
    {
      'questionText':
          'What type of defect can arise when a solid is heated?[AI 2012C]',
      'answers': [
        {
          'text':
              'When a solid is heated, it can have vacancy defect (Schottky defect).',
        },
      ],
    },
    {
      'questionText':
          'Why does LiCl acquire pink colour when heated in Li vapours? [AI 2013, 2012C] ',
      'answers': [
        {
          'text':
              'LiCl when heated with lithium vapours, Li+ become in excess which attract Cl- and the vacant position of anion is occupied by electron forming F-centre which absorbs light from visible region and radiates pink colour.',
        },
      ],
    },
    {
      'questionText':
          'Which type of ionic substances show Schottky defect in solids? [Delhi 2013C]',
      'answers': [
        {
          'text':
              'Those ionic solids in which cation and anion are of almost similar sizes.',
        },
      ],
    },
    {
      'questionText':
          'Which stoichiometric defect in crystals increases the density of a solid? [Delhi 2011]',
      'answers': [
        {
          'text': 'Interstitial defect increases the density of a solid.',
        },
      ],
    },
    {
      'questionText':
          'What is the nature of crystal defect produced when sodium chloride is doped with MgCl 2? ',
      'answers': [
        {
          'text':
              'Vacancy defects: Cation vacancy is created when NaCl is doped with MgCl2. ',
        },
      ],
    },
    {
      'questionText':
          'Conductivity of silicon increases on doping it with phosphorus. Why? [AI 2013]',
      'answers': [
        {
          'text':
              'It is because silicon forms n-type semiconductor in which electrons are free to move.',
        },
      ],
    },
    {
      'questionText':
          ' What is meant by doping in a semiconductor [Delhi 2012; DoE]?',
      'answers': [
        {
          'text':
              'The introduction of a small amount of impurity in a semiconductor is called doping.',
        },
      ],
    },
    {
      'questionText':
          'How may the conductivity of an intrinsic semiconductor be increased? [AI 2012][Foreign 2012] [Foreign 2011]',
      'answers': [
        {
          'text':
              'It can be increased by adding appropriate amount of suitable impurity. This process is called doping.',
        },
      ],
    },
    {
      'questionText':
          'What is meant by the term forbidden zone in reference to band theory of solids?',
      'answers': [
        {
          'text':
              'The gap between valence band and conduction band in the case of insulator is very large. This zone is called forbidden zone. ',
        },
      ],
    },
    {
      'questionText': 'What is meant by an intrinsic semiconductor? ',
      'answers': [
        {
          'text':
              'Those semiconductors which are used in pure form are called ‘intrinsic semiconductors’.',
        },
      ],
    },
    {
      'questionText':
          'Solid solutions of group 13 or 15 impurities with group 14 elements are found to exhibit unusual electrical properties. Why?',
      'answers': [
        {
          'text':
              'It is because their presence leads to excess of electrons or leads to the formation of positive holes which increase electrical conductivity.',
        },
      ],
    },
    {
      'questionText': 'Define photovoltaic compounds.',
      'answers': [
        {
          'text':
              'Those compounds which convert sunlight into electricity are called photovoltaic compounds, e.g. amorphous silicon. ',
        },
      ],
    },
    {
      'questionText': 'What type of stoichiometric defect is shown by AgCl? ',
      'answers': [
        {
          'text': 'Frenkel defect. [AI 2015C]',
        },
      ],
    },
    {
      'questionText':
          'Give an example of an ionic compound which shows Frenkel defect.[AI 2010C] ',
      'answers': [
        {
          'text': 'AgCl shows Frenkel defect.',
        },
      ],
    },
    {
      'questionText':
          '‘ Crystalline solids are anisotropic in nature ’. What does this statement means ? [ Delhi , Foreign 2012]',
      'answers': [
        {
          'text':
              'It means crystalline substances show different optical and electrical properties in different directions i.e. anisotropic in nature.',
        },
      ],
    },
    {
      'questionText':
          'Write a point of distinction between a metallic solid and an ionic solid other than metallic lustre.[ AI 2014 C, Delhi 2012,10]',
      'answers': [
        {
          'text':
              'Metallic solids can conduct electricity due to movement of electrons in solid state, whereas ionic solids conduct electricity in molten state or in aqueous solution by movement of ions.',
        },
      ],
    },
    {
      'questionText':
          'Copper is conducting as such while copper sulphate is containing only in molten state or in aqueous solution, why ?',
      'answers': [
        {
          'text':
              'Copper is a conductor because it has free electrons to move, whereas CuSO4 conducts electricity in molten state because ions become free to move in molten state or in aqueous solution by movement of ions.',
        },
      ],
    },
    {
      'questionText': 'Name the type of binding forces present in dry ice.',
      'answers': [
        {
          'text': 'It has weak van der Waals’ forces of attraction.',
        },
      ],
    },
    {
      'questionText':
          'Why do some glass objects from ancient civilization found to be milky?',
      'answers': [
        {
          'text': 'It is due to some crystallisation.',
        },
      ],
    },
    {
      'questionText':
          'Write a point of distinction between covalent and ionic solids.',
      'answers': [
        {
          'text':
              'Covalent solids do not conduct electricity , whereas ionic solids conduct electricity in molten state as well as acqueous solution.',
        },
      ],
    },
    {
      'questionText':
          'What type of semiconductor is obtained when silicon is doped with arsenic ? [ AI 2010]',
      'answers': [
        {
          'text':
              'n- type semiconductor is obtained when silicon is doped with arsenic.`',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(SS());
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
