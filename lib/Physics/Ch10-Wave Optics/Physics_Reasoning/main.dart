import 'package:class_app/Physics/Ch10-Wave Optics/physics.dart';
import 'package:flutter/material.dart';
import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class WO2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WOState2();
  }
}

class _WOState2 extends State<WO2> {
  final _questions = const [
    {
      'questionText':
          'A beam of unpolarized light is incident, on the boundary between the two transparent media, at an angle of incidence=iB,the Brewesters angle. At what angle does the reflected light get polarized?[Compartment 2016]',
      'answers': [
        {
          'text': 'At an angle of incidence=iB',
        },
      ],
    },
    {
      'questionText':
          'What is the effect on interference fringes in Young’s double slit experiment if one slit is covered?  ( HOTS)',
      'answers': [
        {
          'text': 'Diffraction pattern replaces the interference pattern.',
        },
      ],
    },
    {
      'questionText':
          'Unpolarised  light is intensity I is passed through a Polaroid. What is the intensity of the light transmitted by the polaroid ?',
      'answers': [
        {
          'text': 'The intensity is I/2 as it will get polarised.',
        },
      ],
    },
    {
      'questionText':
          'Which nature of light is provided by polarization and explain why sound wave cannot be polarised ?',
      'answers': [
        {
          'text': 'Transverse nature and the sound is a longitudinal wave.',
        },
      ],
    },
    {
      'questionText':
          'What is a phase difference between two points on the same wavefront?',
      'answers': [
        {
          'text': 'Zero',
        },
      ],
    },
    {
      'questionText':
          'State the reason, why two independent sources of light cannot be considered as coherent sources',
      'answers': [
        {
          'text': 'They cannot keep a constant phase difference',
        },
      ],
    },
    {
      'questionText': 'Why does the bluish colour predominate in a clear sky?',
      'answers': [
        {
          'text': 'Our eyes are more sensitive to blue colour.',
        },
      ],
    },
    {
      'questionText':
          'An unpolarised light of intensity I is passed through a polaroid. What is the intensity of the light transmitted by the polaroid?',
      'answers': [
        {
          'text': '1 /2  as it will get polarised.',
        },
      ],
    },
    {
      'questionText': 'What is meant by interference of light?',
      'answers': [
        {
          'text':
              'The phenomenon of non-uniform distribution of energy in a medium due to the superposition of two light waves from two coherent sources is called interference of light.',
        },
      ],
    },
    {
      'questionText':
          'When monochromatic light travels from one medium to another its wavelength changes but frequency remains the same. Explain. [NCERT Example, Delhi 2011)',
      'answers': [
        {
          'text':
              'When a monochromatic light is incident on the surface separating two media, the atoms of the media interact with the light and may be viewed as oscillators, which take up the frequency of light causing forced oscillations. Thus, the frequency remains same. But in medium, the speed changes, and accordingly the wavelength changes.',
        },
      ],
    },
    {
      'questionText':
          'What type of wavefront will emerge from a  (i ) point source, and (ii) distant light source?',
      'answers': [
        {
          'text':
              '(i) Point source – Spherical wavefront. (ii) Distant light source – Place wavefront.',
        },
      ],
    },
    {
      'questionText':
          'What happens to the phase of a wave undergoing reflection at a denser medium?  [ HOTS]',
      'answers': [
        {
          'text': 'It undergoes a phase change of a pie radian.',
        },
      ],
    },
    {
      'questionText':
          ' What is the ratio of the fringe width for bright and dark fringes in Young’s double slit experiment? [ HOTS]',
      'answers': [
        {
          'text': '1 :1',
        },
      ],
    },
    {
      'questionText':
          'One of the two slits in Young’s double slit experiment is so painted  that it transmits half the intensity of the other. What is the effect on interference fringes? [HOTS].',
      'answers': [
        {
          'text': 'The contrast between the bright and dark fringes decreases.',
        },
      ],
    },
    {
      'questionText':
          'How are interference and diffraction consistent with the principle of conservation of energy?',
      'answers': [
        {
          'text':
              'In interference and diffraction , the light energy is redistributed. If it reduces in one region, producing a dark fringe, it increases in another region, producing a bright fringe. There is no gain or loss of energy which is consistent with the principle of conservation of energy.',
        },
      ],
    },
    {
      'questionText':
          'Why are coherent sources required to create interference of light?',
      'answers': [
        {
          'text':
              'Without coherent sources, the intensity of the interference pattern will not be sustained.',
        },
      ],
    },
    {
      'questionText':
          'How does the angular separation of interference fringes changes, in Young’s experiment , if the distance between the slits is increased?',
      'answers': [
        {
          'text': 'The angular separation of interference fringes decreases.',
        },
      ],
    },
    {
      'questionText':
          'One of the two slits in Young’s double slit experiment is so painted that it transmits half the intensity of the other. What is the effect on interference fringes?[HOTS]',
      'answers': [
        {
          'text': 'The contrast between bright and dark fringes decreases',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(WO());
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
