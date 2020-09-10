import 'package:class_app/Chemistry/Ch12-Aldehydes, Ketones, And Carboxylic Acid/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class AKC2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AKCState2();
  }
}

class _AKCState2 extends State<AKC2> {
  final _questions = const [
    {
      'questionText': '1.	Ethanal is soluble in water. Why ?',
      'answers': [
        {
          'text': 'It is because it can form H-bonds with water.',
        },
      ],
    },
    {
      'questionText':
          'Arrange the following compounds in increasing order of their property as indicated.'
              'CH3CHO, C6H5CHO, HCHO (reactivity towards nucleophilic addition reaction).'
              '2,4-dinitrobenzoic acid, 4 methoxybenzoic acid, 4 nitrobenzoic acid(acidic character).',
      'answers': [
        {
          'text': 'C6H5CHO < CH3CHO < HCHO'
              '4-methoxybenzoic acid < 4-nitrobenzoic acid < 2, 4-dinitrobenzoic acid',
        },
      ],
    },
    {
      'questionText':
          'Arrange the following compounds in an increasing order of their reactivity in nucleophilic addition reactions : ethanal, propanal, propanone, butanone. (Delhi 2012)',
      'answers': [
        {
          'text': 'Butanone < Propanone < Propanal < Ethanal',
        },
      ],
    },
    {
      'questionText':
          'Write the IUPAC name of Ph – CH = CH – CHO. (All India 2012)',
      'answers': [
        {
          'text': 'IUPAC name : 3-phenylprop-2-enal',
        },
      ],
    },
    {
      'questionText':
          'Give a chemical test to distinguish between Benzoic acid and Phenol. (Comptt. Delhi 2012)',
      'answers': [
        {
          'text':
              'Benzoic acid forms a brisk effervescence with NaHCO3 solution but phenol does not respond to this test.',
        },
      ],
    },
    {
      'questionText':
          'Give a chemical test to distinguish between Ethanal and Propanal. (Comptt. Delhi 2012)',
      'answers': [
        {
          'text':
              'Ethanal on heating with I2 in NaOH gives a yellow ppt of iodoform but propanal does not respond to this test.',
        },
      ],
    },
    {
      'questionText':
          'Give a chemical test to distinguish between Propanal and Propanone. (Comptt. Delhi 2012)',
      'answers': [
        {
          'text':
              'Propanone on reacting with I2 and NaOH gives a yellow ppt of iodoform but propanal does not respond to this test.',
        },
      ],
    },
    {
      'questionText':
          'Formaldehyde does not take part in Aldol condensation. Why ? (Comptt. All India 2012)',
      'answers': [
        {
          'text':
              'Formaldehyde does not contain a-hydrogen atom. Therefore it does not take part in aldol condensation.',
        },
      ],
    },
    {
      'questionText':
          'Aldehydes and Ketones have lower boiling points than corresponding alcohols. Why ? (Comptt. All India 2012)',
      'answers': [
        {
          'text':
              'It is due to weak molecular association in aldehydes and ketones arising out of the dipole- dipole interactions.',
        },
      ],
    },
    {
      'questionText': 'Ethanal is soluble in water. Why? (All India 2013)',
      'answers': [
        {
          'text':
              'Ethanal is soluble in water due to H-bonding between the polar carbonyl group and water molecules.',
        },
      ],
    },
    {
      'questionText': 'Write the IUPAC name of the compound. (Delhi 2014)',
      'answers': [
        {
          'text': 'IUPAC name : 3-Hydroxybutanoic acid',
        },
      ],
    },
    {
      'questionText': 'Write the IUPAC name of the compound (Delhi 2014)',
      'answers': [
        {
          'text': 'IUPAC name : 3-Aminobutanal',
        },
      ],
    },
    {
      'questionText': 'Write the IUPAC name of the compound (Delhi 2014)',
      'answers': [
        {
          'text': 'IUPAC name : 4-Hydroxypentan-2-one',
        },
      ],
    },
    {
      'questionText':
          'What type of aldehydes undergo Cannizaro reaction? (Comptt. Delhi 2017)',
      'answers': [
        {
          'text':
              'Aldehydes which do not contain α-hydrogen atom undergo Cannizzaro reaction e.g. Formaldehyde (HCHO) and Benzaldehyde (C6H5CHO).',
        },
      ],
    },
    {
      'questionText':
          'What type of aldehydes undergo Aldol condensation? (Comptt. Delhi 2017)',
      'answers': [
        {
          'text': 'Aldehydes with a hydrogen atom undergo Aldol condensation.',
        },
      ],
    },
    {
      'questionText':
          'Arrange the following compound groups in the increasing order of their property indicated: Propanol, Propane, Propanal (boiling point) (Delhi 2017)',
      'answers': [
        {
          'text': 'Propanol > Propanal > Propane (Boiling point)',
        },
      ],
    },
    {
      'questionText': 'Give one use of Formalin.',
      'answers': [
        {
          'text':
              'Formalin is used as a disinfectant, preservative for biological specimens and in leather'
                  'industry.',
        },
      ],
    },
    {
      'questionText':
          'What is the chemical name of Tollen’s reagent and Fehling’s solution.',
      'answers': [
        {
          'text':
              'Tollen’s reagent = Ammoniacal Silver Nitrate Fehlings solution = Sodium Potassium Tartarate.',
        },
      ],
    },
    {
      'questionText': 'What is the function of in rosenmund reaction?',
      'answers': [
        {
          'text':
              'acts as a catalytic poison which prevents further reduction of aldehyde to alcohol.',
        },
      ],
    },
    {
      'questionText':
          'Name the isomers with molecular formula . Which one will have high boiling point?',
      'answers': [
        {
          'text':
              'The two isomers are and . Acetone boils at higher temperature due to presence of two electron donating alkyl groups.',
        },
      ],
    },
    {
      'questionText':
          'Write a chemical test to distinguish between aldehyde and ketone.',
      'answers': [
        {
          'text':
              'Aldehydes and ketones can be distinguished by Tollen’s test. Aldehydes give a silver mirror on reacting with Tollen’s reagent whereas ketones will not react.',
        },
      ],
    },
    {
      'questionText':
          'Name one distinguishing test between aldehydes and ketones?',
      'answers': [
        {
          'text':
              'Aldehydes and ketones can be distinguished by Tollen’s test. Aldehydes give a silver mirror on reacting with Tollen’s reagent whereas ketones will not react.',
        },
      ],
    },
    {
      'questionText':
          'Give reason why Formaldehyde does not undergo aldol condensation?',
      'answers': [
        {
          'text':
              'Formaldehyde does not have any α -hydrogen and therefore it cannot show aldol condensation.',
        },
      ],
    },
    {
      'questionText':
          'Carboxylic acids have higher boiling points than alcohols of same no. of carbon atoms?',
      'answers': [
        {
          'text':
              'Carboxylic acids have more extensive association of molecules through intermolecular hydrogen bonding than alcohols.',
        },
      ],
    },
    {
      'questionText': 'Write IUPAC name .of CH COCH COCH .',
      'answers': [
        {
          'text': 'Pentane-2,4-dione.',
        },
      ],
    },
    {
      'questionText':
          'What product is obtained when Ethyl benzene is oxidized with alkaline KMnO4?',
      'answers': [
        {
          'text': 'Benzoic acid is formed.',
        },
      ],
    },
    {
      'questionText':
          'Give chemical test to distinguish between acetaldehyde and benzaldehyde.',
      'answers': [
        {
          'text':
              'Acetaldehyde will respond to Iodoform test whereas benzaldehyde does not.',
        },
      ],
    },
    {
      'questionText':
          'Write one chemical to distinguish between Formic acid and Acetic acid.',
      'answers': [
        {
          'text':
              'Formic acid gives silver mirror when treated with Tollen,’s reagent whereas acetic acid does not.',
        },
      ],
    },
    {
      'questionText': 'Give two important uses of formalin.',
      'answers': [
        {
          'text':
              'Used as a preservative.Used for the preparation of Bakelite.',
        },
      ],
    },
    {
      'questionText': 'How is formalin and trioxane related to methanal?',
      'answers': [
        {
          'text':
              'Formalin is 40%aqeous solution of methanol whereas trioxane is trimer of methanal.',
        },
      ],
    },
    {
      'questionText':
          'Give one chemical test to distinguish between Phenol and benzoic acid.',
      'answers': [
        {
          'text':
              'On treatment with neutral FeCl solution Phenol gives a violet color whereas Benzoic acid does not.',
        },
      ],
    },
    {
      'questionText':
          'Most of the aromatic acids are solids while acetic acids and others of this series are liquids. Why?',
      'answers': [
        {
          'text':
              'Aromatic acids have higher molecular weights. Therefore more Vander Waal’s force of attraction as compared to aliphatic acids and hence they are solids. ',
        },
      ],
    }
  ];

  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(AKC());
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
