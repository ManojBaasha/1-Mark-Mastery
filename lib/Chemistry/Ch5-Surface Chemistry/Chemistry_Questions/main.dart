import 'package:class_app/Chemistry/Ch5-Surface Chemistry/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class SC2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SCState2();
  }
}

class _SCState2 extends State<SC2> {
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
          'Physisorption is reversible while chemisorption is irreversible. Why? [Foreign 2015)',
      'answers': [
        {
          'text':
              'In physisorption, the forces of attraction are weak and no new substance is formed, therefore, it is reversible, whereas in chemisorption, new substances are formed, therefore, it is irreversible. ',
        },
      ],
    },
    {
      'questionText':
          'Which has a higher enthalpy of adsorption, physisorption or chemisorption? [AI 2013] ',
      'answers': [
        {
          'text':
              'Chemisorption has higher enthalpy of adsorption because there is a strong force of attraction between adsorbate and adsorbent.',
        },
      ],
    },
    {
      'questionText': 'What is sorption? [Foreign 2013]',
      'answers': [
        {
          'text':
              'Sorption is a process in which adsorption and absorption take place simultaneously, e.g. dyeing of cotton fibres by azo dyes. ',
        },
      ],
    },
    {
      'questionText':
          'What type of forces are responsible for the occurrence of physisorption?[Foreign 2015]',
      'answers': [
        {
          'text':
              'Weak van der Waals forces of attraction are responsible for the occurrence of physisorption.',
        },
      ],
    },
    {
      'questionText':
          'What is the effect of temperature on chemisorption?[AI 2015 Panchkula; DoE]',
      'answers': [
        {
          'text':
              'Chemisorption first increases and then decreases with increase in temperature. ',
        },
      ],
    },
    {
      'questionText': 'What is meant by chemisorption? [Delhi 2011C] ',
      'answers': [
        {
          'text':
              'Chemisorption: If the forces holding the adsorbate are as strong as in chemical bonds, the adsorption process is known as chemical adsorption or chemisorption.',
        },
      ],
    },
    {
      'questionText':
          'Why is it important to have clean surface in surface studies?',
      'answers': [
        {
          'text':
              'It facilitates the adsorption of desired species on the clean surface of adsorbent.',
        },
      ],
    },
    {
      'questionText':
          'Why is chemisorption referred to as activated adsorption? ',
      'answers': [
        {
          'text':
              'It is because chemisorption needs high activation energy as it involves first bond breaking and then bond formation.',
        },
      ],
    },
    {
      'questionText':
          'Why do physisorption and chemisorption behave differently with rise in temperature?',
      'answers': [
        {
          'text':
              'It is because physical adsorption involves weak forces of attraction, whereas chemisorption involves strong bonds. ',
        },
      ],
    },
    {
      'questionText':
          'A delta is formed at the meeting point of sea water and river water. Why? [AI 2015 Allahabad & Dehradun; DoE] ',
      'answers': [
        {
          'text':
              'Muddy river water is a colloidal solution, gets coagulated by electrolytes present in sea water. ',
        },
      ],
    },
    {
      'questionText':
          'Write a method by which lyophobic colloids can be coagulated. [AI 2015] ',
      'answers': [
        {
          'text': 'If we add electrolyte, lyophobic sols can be coagulated.',
        },
      ],
    },
    {
      'questionText':
          'Name the temperature above which the formation of micelles takes place.[Delhi 2015) [Foreign 2014]',
      'answers': [
        {
          'text': 'Kraft temperature. ',
        },
      ],
    },
    {
      'questionText':
          'Based on the type of dispersed phase, what type of colloid is micelles [Foreign 2014]',
      'answers': [
        {
          'text': 'Associated colloids.',
        },
      ],
    },
    {
      'questionText': 'Give one example each of sol and gel.',
      'answers': [
        {
          'text': 'Starch in water is sol, whereas cheese is ‘gel’.',
        },
      ],
    },
    {
      'questionText':
          'Give one example each of oil in water and water in oil emulsions.',
      'answers': [
        {
          'text':
              'Milk is an example of oil in water and liquefied butter is an example of water in oil emulsions.',
        },
      ],
    },
    {
      'questionText':
          'Write the name of the states of (i) dispersed phase (ii) dispersion medium in the case of butter.[AI 2015 Patna] ',
      'answers': [
        {
          'text':
              '(i) Water is dispersed phase and (ii) oil is dispersion medium. ',
        },
      ],
    },
    {
      'questionText':
          'Write the dispersed phase and dispersion medium in smoke.[AI 2015 Guwahati; Delhi 2013]',
      'answers': [
        {
          'text':
              'Dispersed phase is solid (cabon particles) and dispersion medium is gas (air).',
        },
      ],
    },
    {
      'questionText': 'What is the coagulation process? ',
      'answers': [
        {
          'text':
              'The conversion of a colloidal solution into precipitate is called coagulation. In other words, the process of settling of colloidal particles is called coagulation.',
        },
      ],
    },
    {
      'questionText':
          'Why is the ester hydrolysis slow in the beginning and becomes faster after sometime? ',
      'answers': [
        {
          'text':
              'It is because acetic acid is formed in reaction provides H+ which catalyses the hydrolysis of ester.',
        },
      ],
    },
    {
      'questionText':
          'Why are substances like platinum and palladium often used for carrying out electrolysis of aqueous solutions?',
      'answers': [
        {
          'text': 'It is because they are inert, i.e. least reactive.',
        },
      ],
    },
    {
      'questionText':
          'Name the two types of adsorption phenomenon.[Delhi 2010C].',
      'answers': [
        {
          'text':
              '(i) Physical adsorption (physisorption) (ii) Chemical        adsorption (Chemisorption) ',
        },
      ],
    },
    {
      'questionText':
          'Why does the white precipitate of silver halide become coloured in the presence of dye eosin?',
      'answers': [
        {
          'text':
              'Eosin gets adsorbed on the surface of the silver halide to make it coloured.',
        },
      ],
    },
    {
      'questionText':
          'How does chemical adsorption of gas on a solid vary with temperature?',
      'answers': [
        {
          'text':
              'It first increases and then decreases with increase in temperature.',
        },
      ],
    },
    {
      'questionText': 'Define enthalpy of adsorption.',
      'answers': [
        {
          'text':
              'It is the heat evolved when one mole of a substance gets adsorbed on the surface of adsorbent.  ',
        },
      ],
    },
    {
      'questionText': 'What is meant by Physical adsorption?',
      'answers': [
        {
          'text':
              'It is the adsorption in which adsorbate has weak van der Waals forces of attraction with adsorbent.',
        },
      ],
    },
    {
      'questionText': 'Why does Physisorption form multimolecular layer?',
      'answers': [
        {
          'text': 'It is due to weak van der Waals forces of attraction.',
        },
      ],
    },
    {
      'questionText': 'What causes Brownian movement in a colloidal solution?',
      'answers': [
        {
          'text':
              'It is due to unbalanced collision between colloidal particles and the particles of dispersion medium.',
        },
      ],
    },
    {
      'questionText':
          'Gelatin, which is a peptide, is added in ice creams. What can be its role?',
      'answers': [
        {
          'text':
              'It acts as an emulsifying agent. It also acts as protective colloid.',
        },
      ],
    },
    {
      'questionText': 'What is collodion?',
      'answers': [
        {
          'text':
              'It is 4% solution of nitro cellulose in the mixture of alcohol and ether.',
        },
      ],
    },
    {
      'questionText': 'Why does bleeding stop by rubbing moist alum?',
      'answers': [
        {
          'text':
              'Moist alum coagulates blood so, formed blood clot stops bleeding.',
        },
      ],
    },
    {
      'questionText':
          'Why is Fe(OH)3, colloid positively charged, when         prepared by adding FeCl3 to hot water?',
      'answers': [
        {
          'text':
              'It is due to adsorption of Fe ^ 3+ on the surface of Fe(OH)3.',
        },
      ],
    },
    {
      'questionText':
          'How does the precipitation of colloidal smoke take place in Cottrell precipitator?',
      'answers': [
        {
          'text':
              'Charged smoke particles get attracted towards oppositely charged plate and get coagulated.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(SC());
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
        runApp(SC());
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
              runApp(SC());
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
