import 'package:class_app/Physics/Ch9-Ray Optics And Optical Instruments/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class RO2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ROState2();
  }
}

class _ROState2 extends State<RO2> {
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
          'Why must both the objective and the eyepiece of a compound microscope have short focal lengths?[Compartment 2017]',
      'answers': [
        {
          'text':
              'For higher magnification both Objective and eyepiece must have short focal length.',
        },
      ],
    },
    {
      'questionText':
          'A biconvex lens made of a transparent material of a refractive index 1.5 is immersed in water of refractive index 1.33. Will the lens behave as a converging or a diverging lens?Give reasons.[March 2014]',
      'answers': [
        {
          'text':
              'It behaves like a converging lens.Light rays converge on moving from denser to rarer medium',
        },
      ],
    },
    {
      'questionText':
          'Why is there no dispersion in the light refracted through a rectangular glass slab ?',
      'answers': [
        {
          'text':
              'A glass slab can be considered as two prisms placed together and the position of one prism is inverted w.r.t. another. Therefore, the various colours of white light dispersed by the first prism are again combined to form white light.',
        },
      ],
    },
    {
      'questionText':
          'A glass lens of refractive index 1.45 disappears when immersed in a liquid. What is the value of refractive index of the liquid? ( Delhi 2010)',
      'answers': [
        {
          'text': '1.45',
        },
      ],
    },
    {
      'questionText':
          'Under what condition does a biconvex lens of glass having a certain refractive index act as a plane glass sheet when immersed in a liquid ? ( Delhi 2012 )',
      'answers': [
        {
          'text':
              'When the refractive index of the glass and the liquid is same, the lens acts like a plane glass sheet.',
        },
      ],
    },
    {
      'questionText': 'What is the twinkling effect of starlight due to ?',
      'answers': [
        {
          'text':
              'The apparent position of a star is slightly different from the actual position due to the refraction of starlight by the atmosphere. Further, this apparent position is not stationary, since the conditions of the refracting medium are not stationary. The starlight travels through fluctuating masses of air in motion with the changing conditions of temperature , temperature gradients, etc. The fluctuating apparent position of the star gives rise to the twinkling effect.',
        },
      ],
    },
    {
      'questionText':
          ' Watching the sunset on a beach, one can see the Sun for several minutes after it has ‘ actually set ‘. Explain.',
      'answers': [
        {
          'text':
              'Since the atmosphere bends sunlight towards the normal, the apparent position of sun is slightly above its actual position. Thus , even when the sun has actually set (i.e gone below the horizon) its apparent position remains above the horizon for sometime.',
        },
      ],
    },
    {
      'questionText':
          'A concave lens of refractive index 1.5 is immersed in a medium of refracion index 1.65. What is the nature of the lens?[Delhí 2015]',
      'answers': [
        {
          'text': 'The nature of the lens is converging.',
        },
      ],
    },
    {
      'questionText':
          ' An air bubble is formed inside water. Does it act as a converging lens or a diverging lens?',
      'answers': [
        {
          'text': 'An air bubble behaves as a diverging lens inside the water.',
        },
      ],
    },
    {
      'questionText':
          ' The image of an object formed by a lens on the screen is not in sharp focus .Suggest a method to get the clear focussing of the image on the screen without disturbing the position of the object, the lens or the screen.',
      'answers': [
        {
          'text':
              'The image of an object formed by a lens can be brought to a sharp focus on a unfixed screen by changing the focal length of the lens by any of the following methods: (i) By placing another lens of suitable focal length in contact with the previous lens. (ii) By immersing the given lens in a liquid of appropriate refractive index',
        },
      ],
    },
    {
      'questionText':
          'Can absolute value of refractive index of a medium be less than unity?',
      'answers': [
        {
          'text':
              'As the speed of light is maximum in vacuum, it cannot be less than unity.',
        },
      ],
    },
    {
      'questionText':
          'For which material the value of refractive index is (i) minimum and (ii) maximum?',
      'answers': [
        {
          'text':
              '(i) Refractive index is minimum for vacuum (u=1) (ii) Refractive index is maximum for diamond.',
        },
      ],
    },
    {
      'questionText': 'Can virtual image be photographed?',
      'answers': [
        {
          'text':
              ' Yes, because the lens in the camera produces a real image of the virtual image being formed.',
        },
      ],
    },
    {
      'questionText':
          'How does the angle of minimum deviation of a glass prism vary, if the incident violet light is replaced with red light?',
      'answers': [
        {
          'text': ' It decreases',
        },
      ],
    },
    {
      'questionText':
          'Name the phenomenon due to which one cannot see through the fog.',
      'answers': [
        {
          'text': 'Due to scattering of light, one cannot see through the fog.',
        },
      ],
    },
    {
      'questionText':
          'A converging lens is kept co-axially in contact with a diverging lens – both the lenses being of equal focal lengths. What is the focal length of the combination?[AI 2010)',
      'answers': [
        {
          'text': 'Infinity',
        },
      ],
    },
    {
      'questionText':
          'How does the angle of minimum deviation of a glass prism of refractive index 1.5 change, if it is immersed in a liquid of refractive index 1.3?',
      'answers': [
        {
          'text': 'It will decrease',
        },
      ],
    },
    {
      'questionText':
          'A convex lens is placed in contact with a plane mirror. A point object at a distance of 20 cm on the axis of this combination has its image coinciding with itself. What is the focal length of the lens?[Delhi 2014)',
      'answers': [
        {
          'text': 'The focal length of convex lens is 20 cm',
        },
      ],
    },
    {
      'questionText':
          'If an object is moved from infinity to convex mirror, then in which direction will the image shift?',
      'answers': [
        {
          'text': 'The image will shift from focus to the convex mirror',
        },
      ],
    },
    {
      'questionText':
          ' How does the angle of minimum deviation of a glass prism vary, if the incident violet light is replaced with red light?',
      'answers': [
        {
          'text': 'Decreases',
        },
      ],
    },
    {
      'questionText': 'Name the principle on which an optical fibre works',
      'answers': [
        {
          'text': 'Total internal reflection',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(RO());
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
            runApp(RO());
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
