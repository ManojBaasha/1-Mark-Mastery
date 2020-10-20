import 'package:class_app/Chemistry/Ch2-Solutions/Chemistry.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Chemistry/Format/result.dart';
import 'package:class_app/Chemistry/Format/quiz.dart';
// void main() {
//   runApp(MyApp());
// }

class S2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SState2();
  }
}

class _SState2 extends State<S2> {
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
          'State the main advantage of molality over molarity as the unit of concentration. [Delhi 2010C;DoE]',
      'answers': [
        {
          'text':
              'Molality is more accurate than molarity because molality does not depend on temperature as mass does not change with temperature. ',
        },
      ],
    },
    {
      'questionText':
          'State Raoults law for a solution containing volatile components.[Foreign 2012, 11; Delhi 2010C]',
      'answers': [
        {
          'text':
              'The vapour pressure of each component is directly proportional to the mole fraction of each component.',
        },
      ],
    },
    {
      'questionText': 'What are azeotropes? Give an example.[Delhi 2014] ',
      'answers': [
        {
          'text':
              'Azeotropes are constant boiling mixtures which distill out unchanged in their composition, e.g. ethanol and water. ',
        },
      ],
    },
    {
      'questionText':
          '10 mL of liquid A was mixed with 10 mL of liquid B. The volume of the resulting solution was found to be 19.9 mL. What do you conclude?',
      'answers': [
        {
          'text':
              'It means solution shows -ve deviation from Raoults law due to increase in force of attraction, volume decreases. ',
        },
      ],
    },
    {
      'questionText':
          'Give reason when 30 mL of ethyl alcohol and 30 mL of water are mixed, the volume of resulting solution is more than 60 mL.',
      'answers': [
        {
          'text':
              'It is because forces of attraction between ethyl alcohol and water are less than ethanol-ethanol and water-water.',
        },
      ],
    },
    {
      'questionText':
          'Two liquids A and B boil at 145 °C and 190 °C respectively. Which of them has a higher vapour pressure at 80 °C? ',
      'answers': [
        {
          'text':
              '‘A’ because lower the boiling point, higher will be vapour pressure.',
        },
      ],
    },
    {
      'questionText': 'What is anti-freeze?',
      'answers': [
        {
          'text':
              'Anti-freeze is a substance which is added to solvent to lower its freezing point. It is used in car radiators to lower the freezing point of water .e.g. ethylene glycol.',
        },
      ],
    },
    {
      'questionText':
          'Measurement of which colligative property is preferred for determination of molar mass. [Foreign 2013; DoE]',
      'answers': [
        {
          'text': 'Osmotic pressure. ',
        },
      ],
    },
    {
      'questionText': 'Define osmotic pressure. [AI 2013; DOE] ',
      'answers': [
        {
          'text':
              'It is the extra pressure which must be applied on solution side so as to prevent the flow of solvent molecules from solution through semi-permeable membrane. ',
        },
      ],
    },
    {
      'questionText': 'What is meant by reverse osmosis? [AI 2011; DoE]',
      'answers': [
        {
          'text':
              'Reverse Osmosis: If extra pressure is applied on the solution side and exceeds the osmotic pressure, the osmosis can be reversed. That is, pure water can be forced out of the solution to pass through the pores of the membrane in the opposite direction. This is called reverse osmosis. ',
        },
      ],
    },
    {
      'questionText':
          'Why is osmotic pressure considered as a colligative property?',
      'answers': [
        {
          'text':
              'Osmotic pressure depends upon the number of particles of solute and not on the nature of solute, therefore, it is considered as colligative property. ',
        },
      ],
    },
    {
      'questionText': 'What is ‘semipermeable’ membrane?',
      'answers': [
        {
          'text':
              'It is the membrane which has sub-microscopic pores through which small solvent molecules like water can pass but bigger solute particles cannot pass. ',
        },
      ],
    },
    {
      'questionText':
          'Give an example of a material used for making semipermeable membrane for carrying out reverse osmosis. ',
      'answers': [
        {
          'text': 'Cellulose acetate. ',
        },
      ],
    },
    {
      'questionText':
          'What possible value of i will it have if solute molecules undergo association in solution? [AI 2014 ]',
      'answers': [
        {
          'text': 'i < 1, if solute molecules undergo association.',
        },
      ],
    },
    {
      'questionText':
          'A person suffering from high blood pressure should take less common salt, why? [DoE]',
      'answers': [
        {
          'text':
              'Common salt contains Na+ and Cl which increase osmotic pressure of blood therefore, increase blood pressure.',
        },
      ],
    },
    {
      'questionText':
          'Why do doctors advise gargles by saline water in case of sore throat? [HOTS]',
      'answers': [
        {
          'text':
              'Saline water is hypertonic solution, therefore, fluids causing irritation in throat will come out. ',
        },
      ],
    },
    {
      'questionText':
          'When outer shell of two eggs are removed, one of the eggs is placed in pure water and other is placed in saturated solution of NaCl, what will be observed and why? (HOTS]',
      'answers': [
        {
          'text':
              'The egg placed in pure water will swell, whereas the egg placed in saturated solution of NaCl will shrink.',
        },
      ],
    },
    {
      'questionText': 'What is the cause of anoxia?',
      'answers': [
        {
          'text':
              'Low level of oxygen in the blood and tissues of people living at high altitudes.',
        },
      ],
    },
    {
      'questionText': 'Why are cold drinks bottles filled at high pressure?',
      'answers': [
        {
          'text':
              'It is done so as to increase the solubility of CO2 in water.',
        },
      ],
    },
    {
      'questionText':
          'Give an example each of solid in gas and liquid in gas solution.',
      'answers': [
        {
          'text': 'Iodine vapours in air, humidity in air.',
        },
      ],
    },
    {
      'questionText':
          'Can we separate an azeotropic mixture by distillation? Why do we call it a mixture?',
      'answers': [
        {
          'text':
              'No, we cannot separate azeotropic mixture with the help of distillation because they boil together. Its composition can vary with the change in external pressure, that is why it is called a mixture.',
        },
      ],
    },
    {
      'questionText': 'State how does osmotic pressure vary with temperature.',
      'answers': [
        {
          'text': 'Osmotic pressure increases with increase in temperature.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(S());
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
        runApp(S());
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
              runApp(S());
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
