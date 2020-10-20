import 'package:class_app/Physics/Ch8-Electromagnetic Waves/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class EW2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EWState2();
  }
}

class _EWState2 extends State<EW2> {
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
          'A variable frequency AC source is connected to a capacitor. Will the displacement current change if the frequency of the AC source is decreased?[Compartment 2015]',
      'answers': [
        {
          'text':
              'A current is said to be wattless if theaverage power consumed over one complete cycle is zero.',
        },
      ],
    },
    {
      'questionText':
          'Do electromagnetic waves carry energy and momentum?[March2017]',
      'answers': [
        {
          'text': 'Speed of electrmagnetic wave, c=E0/B0',
        },
      ],
    },
    {
      'questionText':
          'Moochramatic light of frequency 6.0x10^14Hz is produced by a laser. What is the energy of a photon in the light beam?[Sample Question Paper 2018-19]',
      'answers': [
        {
          'text':
              'Each proton has an energy E=hv =(6.63x10^-34)x(6x10^14) =3.98x10^-19',
        },
      ],
    },
    {
      'questionText':
          'Write the range of frequencies of electromagnetic waves which propogate through sky wave mode.[Compartment 2018]',
      'answers': [
        {
          'text': 'From few MHz to 30-40MHz',
        },
      ],
    },
    {
      'questionText':
          'Four nuclei of an element undergo fusion to form a heavier nucleus, with release of energy. Which of the two - parent or the daughter nucleus - would have higher binding energy per nucleon?[March 2018]',
      'answers': [
        {
          'text': 'Daughter Nucleus',
        },
      ],
    },
    {
      'questionText':
          'Name the electromagnetic waves that are widely used as a diagnostic tool in medicine[Sample Question Paper 2018-19]',
      'answers': [
        {
          'text': 'X-rays',
        },
      ],
    },
    {
      'questionText':
          'Name thhe current which can flow even in the absence of electric charge[Sample Question Paper 2018-19]',
      'answers': [
        {
          'text': 'Displacement Current',
        },
      ],
    },
    {
      'questionText':
          'What oscillates in an electromagnetic wave of frequency 10MHz and at what frequency?',
      'answers': [
        {
          'text': 'Electric and magnetic fields , and with frequency  10 MHz',
        },
      ],
    },
    {
      'questionText':
          'Why is short wave band used for long distance radio broadcast?  ( HOTS)',
      'answers': [
        {
          'text':
              'Short waves are used in long distance broadcast because they are reflected by the ionosphere back to the surface of the earth. This way long distance can be reached.',
        },
      ],
    },
    {
      'questionText':
          'State one use and one method of detecting the rays beyond the visible – red end of the electromagnet spectrum.',
      'answers': [
        {
          'text':
              'The rays lie beyond the visible – red end of the em spectrum are infrared. These rays can be detected by their heating effect. They are used to in Earth Satellites to observe growth of crops.',
        },
      ],
    },
    {
      'questionText':
          'The current in a circuit containing a capacitor is 0.15 A. What is the displacement current and where does it exist ? ( HOTS)',
      'answers': [
        {
          'text':
              'As conventional current is equal to displacement current. It is also 0.15 A and exists across the capacitor plates.',
        },
      ],
    },
    {
      'questionText':
          'What is the main difference between characteristic X –rays and Y-rays ?',
      'answers': [
        {
          'text':
              'Characteristics X –rays are emitted when an orbital electron jumps from a higher energy level to a lower energy level in the atom of high mass number, whereas y – rays are emitted by radioactive nuclei.',
        },
      ],
    },
    {
      'questionText':
          'Out of microwaves , ultra violet rays and infrared rays, which radiation will be most effective for emission of electrons from a metallic surface ?',
      'answers': [
        {
          'text':
              'Ultra violet rays will be most effective for emission of electrons because these rays have the highest frequency and hence most energetic.',
        },
      ],
    },
    {
      'questionText':
          'To which part of the electromagnetic spectrum does a wave of frequency 5 x 10^ 19 Hz belong? [AI 2014]',
      'answers': [
        {
          'text':
              'The wave of frequency 5 x 1019 Hz corresponds to X-rays or y-region of the em spectrum.',
        },
      ],
    },
    {
      'questionText':
          'How are infrared waves produced? What is the range of their wavelength?',
      'answers': [
        {
          'text':
              'Infrared waves are produced by hot bodies due to the vibrations of the atoms and molecules. Their wavelength ranges from 1 mm to 700 nm.',
        },
      ],
    },
    {
      'questionText': 'Write two uses of X-rays.[Foreign 2011]',
      'answers': [
        {
          'text':
              '(i) X-rays are used as a diagnostic tool in medicine.(ii) X-rays are used in the treatment of certain forms of cancer.',
        },
      ],
    },
    {
      'questionText': 'How are microwaves produced? [AI 2011]',
      'answers': [
        {
          'text':
              'Microwaves are produced by special vacuum tubes like klystrons, magnetrons and gunn diodes.',
        },
      ],
    },
    {
      'questionText':
          'What are the directions of electric and magnetic field vectors relative to each other and relative to the direction of propagation of electromagnetic waves?',
      'answers': [
        {
          'text': 'Mutually perpendicular.',
        },
      ],
    },
    {
      'questionText':
          'Name the part of electromagnetic spectrum whose wavelength lies in the range of 10^-10 m. Give its one use.[AI 2010]',
      'answers': [
        {
          'text':
              'X-rays. (i) X-rays are used in the treatment of certain forms of cancer.',
        },
      ],
    },
    {
      'questionText':
          'Which part of electromagnetic spectrum has largest penetrating power?',
      'answers': [
        {
          'text': 'Y -rays.',
        },
      ],
    },
    {
      'questionText':
          'What is the frequency of electromagnetic waves produced by oscillating charge of frequency v? [Delhi 2011C]',
      'answers': [
        {
          'text':
              'The frequency of electromagnetic waves produced by an oscillating charge of frequency v is also v.',
        },
      ],
    },
    {
      'questionText':
          'A capacitor has been charged by a dc source. What are the magnitudes of conduction and displacement currents, when it is fully charged? [Delhi 2013]',
      'answers': [
        {
          'text': 'Conduction current and displacement current both are zero.',
        },
      ],
    },
    {
      'questionText': ' How are radio waves produced? [AI 2011]',
      'answers': [
        {
          'text':
              'By rapid acceleration and deceleration of electrons in conducting wires.',
        },
      ],
    },
    {
      'questionText':
          'Which part of electromagnetic spectrum is absorbed from sunlight by ozone layer?[Delhi 2010]',
      'answers': [
        {
          'text': 'Ultraviolet rays.',
        },
      ],
    },
    {
      'questionText':
          'Welders wear special goggles or face masks with glass windows to protect their eyes from electromagnetic radiations. Name the radiations and write the range of their frequency.[AI 2013]',
      'answers': [
        {
          'text':
              'Ultraviolet rays (UV rays),The frequency range of UV rays is 0.75 x 10^15 Hz to 0.5 * 10^18 Hz.',
        },
      ],
    },
    {
      'questionText': 'Write two uses of infrared rays.[Foreign 2011]',
      'answers': [
        {
          'text':
              '(i) In electronic devices.(ii) Infrared lamps are used in physical therapy.',
        },
      ],
    },
    {
      'questionText':
          'Name the electromagnetic waves, which (i) maintain the Earths warmth, and (ii) are used in aircraft navigation.[Foreign 2012]',
      'answers': [
        {
          'text': '(i) Infrared (ii) Microwaves',
        },
      ],
    },
    {
      'questionText': 'How are X-rays produced? (AI 2011)',
      'answers': [
        {
          'text': ' By bombarding a metal target by. high energy electrons.',
        },
      ],
    },
    {
      'questionText':
          'Arrange the following electromagnetic waves in order of increasing frequency: y-rays, microwaves, infrared rays and ultraviolet rays. [Foreign 2014)',
      'answers': [
        {
          'text': ' y-rays > ultraviolet rays > infrared rays > microwaves.',
        },
      ],
    },
    {
      'questionText':
          'What oscillates in electromagnetic waves? Are these waves transverse or longitudinal?(CBSE Sample Paper 2011]',
      'answers': [
        {
          'text':
              '(i) The electric and magnetic fields oscillate in mutually perpendicular directions in electromagnetic waves. (ii) Electromagnetic waves are transverse in nature.',
        },
      ],
    },
    {
      'questionText':
          'Name em radiations used for detecting fake currency notes.',
      'answers': [
        {
          'text': 'UV radiation.',
        },
      ],
    },
    {
      'questionText': 'Why are  microwaves used in radar?',
      'answers': [
        {
          'text':
              'Microwaves have the wavelengths of the order of a few millimetres. Due to their short wavelengths, they are not diffracted easily, and can travel longer distances.',
        },
      ],
    },
    {
      'questionText':
          'Is the ratio of frequencies of ultraviolet rays and infrared rays in glass more than, less than or equal to 1?',
      'answers': [
        {
          'text':
              'More than 1, because the frequency of ultraviolet rays is greater than that of infrared rays.',
        },
      ],
    },
    {
      'questionText':
          'Which of the following, if any, can act as a source of electromagnetic waves?',
      'answers': [
        {
          'text':
              '(i) A charge moving with a constant velocity. (ii) A charge moving in a circular orbit. (iii) A charge at rest.(ii) A charge moving in a circular orbit',
        },
      ],
    },
    {
      'questionText':
          'What is the phase difference between electric and magnetic field vectors in an em wave?',
      'answers': [
        {
          'text': 'Zero',
        },
      ],
    },
    {
      'questionText':
          'What feature of electromagnetic waves led Maxwell to conclude that light itself is an electromagnetic wave?',
      'answers': [
        {
          'text':
              'The feature of electromagnetic waves is the emergence of the speed of light from purely electromagnetic consideration which led Maxwell to conclude that light itself is an electromagnetic wave.',
        },
      ],
    },
    {
      'questionText':
          'What evidence is there that sound is not electromagnetic in nature?',
      'answers': [
        {
          'text':
              'Sound wave requires an inertial medium for their propagation which shows that sound is not electromagnetic in nature.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(EW());
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
            runApp(EW());
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
