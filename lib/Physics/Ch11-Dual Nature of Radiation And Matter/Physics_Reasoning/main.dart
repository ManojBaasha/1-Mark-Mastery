import 'package:class_app/Physics/Ch11-Dual Nature of Radiation And Matter/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class DN2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DNState2();
  }
}

class _DNState2 extends State<DN2> {
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
          'Two particles have equal momenta. what is the ratio of their de-Broglie wavelengths?[Sample Question Paper 2018-19]',
      'answers': [
        {
          'text': 'P1=P2 , Ratio of (lambda1)/(lambda2)=1:1',
        },
      ],
    },
    {
      'questionText':
          'Two metals A and B have work functions 2 eV and 5 e V respectively, Which metal has lower threshold wavelength?',
      'answers': [
        {
          'text':
              'Metal with work function 5 eV has lower threshold wavelength i.e. metal B.',
        },
      ],
    },
    {
      'questionText':
          'What is the charge on metal in the photoelectric experiment?',
      'answers': [
        {
          'text': 'It will possess positive charge as it has lost electrons.',
        },
      ],
    },
    {
      'questionText': ' What is the rest mass of a photon ?',
      'answers': [
        {
          'text': 'The rest mass of a photon is zero.',
        },
      ],
    },
    {
      'questionText':
          'Define the term ‘ threshold frequency’ in relation to photoelectric effect.[ Foreign 2011 ]',
      'answers': [
        {
          'text':
              'For a given photosensitive surface, the minimum value of frequency of the incident radiation for which no photoelectric emission takes place is known as threshold frequency.',
        },
      ],
    },
    {
      'questionText':
          'In photoelectric effect, why should the photoelectric current increases as the intensity of monochromatic radiation incident on a photosensitive surface is increased? Explai.  [ Foreign 2014].',
      'answers': [
        {
          'text':
              'An increase in intensity means increase in number of photons and thus, increase in photoelectric current.',
        },
      ],
    },
    {
      'questionText':
          'Two beams, one of red light and the other of blue light, of the same intensity are incident on a metallic surface to emit photoelectrons. Which one of the two beams emits electrons of greater kinetic energy?[HOTS)',
      'answers': [
        {
          'text': 'The blue light emits the electrons of greater K.E.',
        },
      ],
    },
    {
      'questionText': 'Can non-metals show photoelectric effect? [HOTS]',
      'answers': [
        {
          'text':
              'Yes, when they are exposed to electromagnetic radiations of higher frequency.',
        },
      ],
    },
    {
      'questionText':
          'What happens to the wavelength of a photon after it collides with an electron?',
      'answers': [
        {
          'text': ' The wavelength of a photon increases.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(DN());
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(DN());
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
          ),
          heroTag: "Back",
        ),
      ),
    );
  }
}
