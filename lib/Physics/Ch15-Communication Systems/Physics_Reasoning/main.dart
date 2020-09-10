import 'package:class_app/Physics/Ch15-Communication Systems/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class C2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CState2();
  }
}

class _CState2 extends State<C2> {
  final _questions = const [
    {
      'questionText':
          'Why are repeaters used in communication system?[March 2015]',
      'answers': [
        {
          'text':
              'Repeaters are used to increse/extend the range of a communication system',
        },
      ],
    },
    {
      'questionText':
          'Name the 2 basic modes of communication system.[Compartment 2016]',
      'answers': [
        {
          'text': '(i)Point to point communication, (ii)Broadcast',
        },
      ],
    },
    {
      'questionText':
          'State 2 reasons why high frequency carrier waves are needed in transmitting a message signal.[Compartment 2017]',
      'answers': [
        {
          'text':
              'Any Two:(i)Length of the transmitting antenna is short (ii)Power radiated is more (iii)Mixing of power sinals can be avoided',
        },
      ],
    },
    {
      'questionText':
          'Which mode of propogation is used by short wave boadcast services?[March 2018]',
      'answers': [
        {
          'text': 'Skywave Propogation',
        },
      ],
    },
    {
      'questionText':
          'Distinguish between amplitude modulation and frequency modulation.[Compartment 2015]',
      'answers': [
        {
          'text':
              'In amplitude modulation, the amplitude, os the carrier wave, changes in accordance with the modulating signal, while in frequency of the carrier wave varies in accordance with the modulating signal',
        },
      ],
    },
    {
      'questionText':
          'What does the term demodulation in communication system mean?[Compartment 2014]',
      'answers': [
        {
          'text':
              'Demodulation is the process of retrieval of information from the carrier wave at the receiver end.',
        },
      ],
    },
    {
      'questionText':
          'Distinguish between point to point and broadcast modes of communication.[Compartment 2014]',
      'answers': [
        {
          'text':
              'In point to point communication ,communication takes place over a single link between a transmitter and a receiver. In the broadcast mode, there are a large number of receivers corresponding to a single transmitter.',
        },
      ],
    },
    {
      'questionText': 'What is ground wave propagation ?',
      'answers': [
        {
          'text':
              'The propagation along the surface of the earth for signals of frequency < 10 MHz is called ground wave propagation. ',
        },
      ],
    },
    {
      'questionText': ' What is space wave propagation?',
      'answers': [
        {
          'text':
              'When the signal travels directly from the transmitting antenna to the receiving antenna with frequencies more than 40 MHz, the propagation is called space wave propagation.',
        },
      ],
    },
    {
      'questionText':
          'Suggest a possible communication channel for the transmission of a message signal which has a bandwidth of 5 MHz.',
      'answers': [
        {
          'text': 'Ionospheric propagation.',
        },
      ],
    },
    {
      'questionText':
          'Name the type of radio wave propagation involved when TV signals, broadcast by a tall antenna, are intercepted directly by the receiver antenna.',
      'answers': [
        {
          'text': 'Space wave propagation',
        },
      ],
    },
    {
      'questionText':
          'Why should transmitters broadcasting programmes use different carrier frequencies ?',
      'answers': [
        {
          'text': 'To avoid frequency overlapping and interference.',
        },
      ],
    },
    {
      'questionText':
          'What is the function of a transmitter in a communication system? [Foreign 2013, 2011)',
      'answers': [
        {
          'text':
              'A transmitter processes the incoming message signal to make it suitable for transmission through a channel.',
        },
      ],
    },
    {
      'questionText':
          'What is the function of a repeater in a communication system?[Foreign 2011]',
      'answers': [
        {
          'text':
              'A repeater picks up the signal from the transmitter and then amplifies and retransmits it to the receiver.',
        },
      ],
    },
    {
      'questionText':
          'What is the function of a receiver in a communication system? [Foreign 2011]',
      'answers': [
        {
          'text':
              'A receiver extracts the desired message signals from the received signals and makes them suitable for a user.',
        },
      ],
    },
    {
      'questionText':
          'Which part of the electromagnetic spectrum is used in satellite communication?[Foreign 2010)',
      'answers': [
        {
          'text': 'Microwaves',
        },
      ],
    },
    {
      'questionText':
          'Why is ground wave transmission of signals restricted to a frequency of 1500 kHz?',
      'answers': [
        {
          'text':
              'Energy losses due to absorption of energy by the earth are frequency dependent. For frequencies above 15',
        },
      ],
    },
    {
      'questionText':
          'What is the bandwidth required for speech signal transmission? [HOTS]',
      'answers': [
        {
          'text':
              'As speech signal transmission requires a frequency range 300 Hz to 3100 Hz, bandwidth of 2800 Hz is used.',
        },
      ],
    },
    {
      'questionText':
          'Is it necessary for a transmitting antenna to be at the same height as that of the receiving antenna for Los communication?[Foreign 2015)',
      'answers': [
        {
          'text':
              'As signals move in a straight line in LOS communication, it is not necessary.',
        },
      ],
    },
    {
      'questionText':
          'State the reason why microwaves are best suited for long distance transmission of signals.',
      'answers': [
        {
          'text':
              'Due to(i) lesser diffraction/low deviation. (ii) shorter wavelength',
        },
      ],
    },
    {
      'questionText':
          'Give the reason why transmission of TV signals via sky waves is not possible.',
      'answers': [
        {
          'text': 'TV signals are not reflected back by ionosphere',
        },
      ],
    },
    {
      'questionText':
          'Why are broadcast frequencies (carrier waves) sufficiently spaced in amplified modulated wave? [Foreign 2013]',
      'answers': [
        {
          'text': 'To avoid frequency overlapping and interference',
        },
      ],
    },
    {
      'questionText':
          'Why FM band gives more clear transmission in compression to AM band?',
      'answers': [
        {
          'text':
              'In AM, the carrier wave instantaneous voltage is varied by modulating waves voltage. On transmission, noise signals can also be added and receiver assumes noise a part of the modulating signals. However, in FM, the carrier frequency is changed as per modulating wave instantaneous voltage. This can only be done at the mixing modulating stage and not while signals are transmitting in channel. Hence, noise does not effect FM signals.',
        },
      ],
    },
    {
      'questionText':
          ' What is the bandwidth on which mobile phones are operated?',
      'answers': [
        {
          'text':
              'Bandwidth of mobile to base station is 896-901 MHz and base station to mobile is 840-935 MHz.',
        },
      ],
    },
    {
      'questionText': 'What is the bandwidth of digital signal?',
      'answers': [
        {
          'text':
              'Theoretically, bandwidth of a digital signal is unlimited. A rectangular or square pulse is a digital signal which can be considered as the result of superposition of infinite sinusoidal waves of fundamental and harmonic frequencies.',
        },
      ],
    },
    {
      'questionText':
          'Under what condition, different stations can operate without interfering with each other.',
      'answers': [
        {
          'text':
              'As long as the broadcast frequencies (carrier waves) are sufficiently spaced out so that sound waves do not overlap, different stations can operate without interfering with each other.',
        },
      ],
    },
    {
      'questionText': 'What is IF stage?',
      'answers': [
        {
          'text':
              'IF stage (intermediate frequency stage): In IF stage, very high frequencies received are changed to lower frequency signal, before sending it to the demodulator.',
        },
      ],
    },
    {
      'questionText': 'What is envelop detector?',
      'answers': [
        {
          'text':
              'Envelop detector is a filter circuit which detects baseband signal from a modulated signal.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(C());
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
