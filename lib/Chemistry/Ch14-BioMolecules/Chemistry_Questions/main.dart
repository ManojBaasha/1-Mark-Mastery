import 'package:class_app/Chemistry/Ch14-BioMolecules/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class B2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BState2();
  }
}

class _BState2 extends State<B2> {
  final _questions = const [
    {
      'questionText':
          'Which of the two components of starch is water soluble? [Delhi 2014; DoE]',
      'answers': [
        {
          'text': 'Amylose is water soluble component in starch.',
        },
      ],
    },
    {
      'questionText':
          'Which component of starch is a branched polymer of D-glucose and insoluble in water? [Delhi 2014]',
      'answers': [
        {
          'text': 'Amylopection.',
        },
      ],
    },
    {
      'questionText':
          'What are the products of hydrolysis of maltose?[AI 2014]',
      'answers': [
        {
          'text': '2 moles of Glucose. ',
        },
      ],
    },
    {
      'questionText':
          'Name the two components of D-glucose which constitute starch. [Foreign 2014]',
      'answers': [
        {
          'text': 'Amylose and amylopectin are two components of starch.',
        },
      ],
    },
    {
      'questionText': 'What are biocatalysts? Give an example.[Foreign 2014]',
      'answers': [
        {
          'text':
              'Those catalysts which catalyse biochemical reactions are called biocatalysts, e.g. invertase catalyses hydrolysis of cane-sugar to form glucose and fructose.',
        },
      ],
    },
    {
      'questionText':
          'What is the structural feature characterising reducing sugar?[Delhi 2010 C] ',
      'answers': [
        {
          'text': 'They have free --C-H (Aldehyde) group.',
        },
      ],
    },
    {
      'questionText':
          'Give an example each of the following: [DoE] (i) Reducing sugar (ii) Non-reducing sugar [Delhi 2010C]',
      'answers': [
        {
          'text': '(0) Glucose (ii) Sucrose',
        },
      ],
    },
    {
      'questionText': 'What is difference between amylose and amylopectin? ',
      'answers': [
        {
          'text':
              'Amylose is water soluble linear polymer of a-glucose. Amylopectin is water insoluble branched chain polymer of alpha -glucose.',
        },
      ],
    },
    {
      'questionText': 'Why is cellulose not digested in human body? ',
      'answers': [
        {
          'text':
              'Cellulose is not digested in human body because we do not have enzymes which can metabolise cellulose.',
        },
      ],
    },
    {
      'questionText': 'What are monosaccharides?',
      'answers': [
        {
          'text':
              'Monosaccharides are simple sugars which cannot be hydrolysed, e.g. glucose, fructose, galactose, ribose, deoxyribose, etc. are the examples of  monosaccharides.',
        },
      ],
    },
    {
      'questionText':
          'Name the linkage connecting monosaccharide units in   polysaccharides. ',
      'answers': [
        {
          'text': 'Glycosidic linkage.',
        },
      ],
    },
    {
      'questionText':
          'Monosaccharides contain carbonyl group hence are classified as aldose or ketose. The number of carbon atoms present in the monosaccharide molecule are also considered for classification. In which class of monosaccharide will you please fructose?',
      'answers': [
        {
          'text':
              'Fructose is keto hexose because it has 6 carbon atoms and keto group.',
        },
      ],
    },
    {
      'questionText':
          'Sucrose is dextrorotatory but the mixture obtained after hydrolysis is laevorotatory. Explain. ',
      'answers': [
        {
          'text':
              'On hydrolysis, sucrose (dextrorotatory) gives glucose (dextrorotatory +52.5) and fructose (laevorotatory, -92.4°). Since laevorotation of fructose is more than dextrorotation of glucose, therefore, mixture is laevorotatory.',
        },
      ],
    },
    {
      'questionText':
          'Which monosaccharide units are present in starch, cellulose and glycogen and which linkages link these units? ',
      'answers': [
        {
          'text':
              'Starch is branched chain polymer of a-glucose, whereas cellulose is linear polymer of B-glucose. Glycogen is polymer of a-glucose. In starch and glycogen, alpha -glycosidic-alpha -linkage is present, whereas in cellulose beta -glycosidic-beta -linkage is present. ',
        },
      ],
    },
    {
      'questionText':
          'Write the name of linkage joining two amino acids.[AI 2013]',
      'answers': [
        {
          'text': 'Peptide linkage',
        },
      ],
    },
    {
      'questionText': 'What is meant by tertiary structure of proteins?',
      'answers': [
        {
          'text':
              'Tertiary structure of proteins involves further folding and twisting of secondary structure of proteins. It has compact and folded structure. It involves H-bonding, disulphide linkage, ionic or salt bridges and hydrophobic interactions. It has van der Waals and electrostatic force of attraction.',
        },
      ],
    },
    {
      'questionText':
          'Give an example for each of the fibrous protein and globular protein, [AL 2016]',
      'answers': [
        {
          'text':
              'Keratin as fibrous protein and albumin is globular protein. ',
        },
      ],
    },
    {
      'questionText':
          'Some enzymes are named after the reaction, where they are used. What name is given to the class of enzymes which catalyse the oxidation of one substrate with simultaneous reduction of another substrate.',
      'answers': [
        {
          'text': 'Oxidoreductase.',
        },
      ],
    },
    {
      'questionText':
          'How do enzymes help a substrate to be attacked by the reagent effectively?',
      'answers': [
        {
          'text':
              'Active site of enzyme holds the substrate molecule in suitable position so that it  can be attacked by reagent effectively. ',
        },
      ],
    },
    {
      'questionText':
          'Name the deficiency diseases resulting from lack of vitamins A and E in the diet. [Delhi 2013C, 2011C; DoE]',
      'answers': [
        {
          'text':
              '(i) Night blindness is caused by lack of Vitamin A.(ii) Loss of reproduction power is caused by deficiency of Vitamin E. ',
        },
      ],
    },
    {
      'questionText':
          'Out of the following groups, which group has all fat soluble vitamins: (a) A, B-Complex, C, D  (b) A, D, E, K  (c) K, B-Complex, A, E  (d) C, A, E, D.',
      'answers': [
        {
          'text': '(b) A, D, E and K are the group of fat-soluble vitamin.',
        },
      ],
    },
    {
      'questionText': 'Which vitamin is linked with anti-sterility? [DoE]',
      'answers': [
        {
          'text': 'Vitamin E.',
        },
      ],
    },
    {
      'questionText': 'Name the disease caused by deficiency of vitamin B.',
      'answers': [
        {
          'text': 'Beri –beri is disease caused by deficiency of vitamin B1.',
        },
      ],
    },
    {
      'questionText': 'Why must vitamin C be supplied regularly in diet?',
      'answers': [
        {
          'text':
              'Vitamin C is soluble in water ,therefore , it is excreted in urine and can’t be stored in body, therefore, it should be part of our diet.',
        },
      ],
    },
    {
      'questionText': 'Write the full forms of DNA and RNA.[ Foreign 2012]',
      'answers': [
        {
          'text': 'DNA  is Deoxyribonucleic acid, RNA is Ribonucleic acid.',
        },
      ],
    },
    {
      'questionText': 'How are nucleotides linked together in nucleic acid?',
      'answers': [
        {
          'text':
              'Nucleotides are linked in nucleic acids through phosphodiester linkage between 5’ and 3 ‘ carbon atoms of pentose sugar.',
        },
      ],
    },
    {
      'questionText': 'Name the sugars present in nucleic acids.',
      'answers': [
        {
          'text': '',
        },
      ],
    },
    {
      'questionText':
          'Ribose and deoxyribose are sugars present in RNA and DNA respectively.',
      'answers': [
        {
          'text': '',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(B());
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
