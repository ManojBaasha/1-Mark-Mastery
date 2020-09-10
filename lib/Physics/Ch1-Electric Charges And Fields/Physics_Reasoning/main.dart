import 'package:class_app/Physics/Ch1-Electric Charges And Fields/physics.dart';
import 'package:flutter/material.dart';

import 'package:class_app/Physics/Format/quiz.dart';
import 'package:class_app/Physics/Format/result.dart';
// void main() {
//   runApp(MyApp());
// }

class EC2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ECState2();
  }
}

class _ECState2 extends State<EC2> {
  final _questions = const [
    {
      'questionText':
          "Each question in this section consist only of the basic definitions of the chapter. For each question Press the answer to move to the next question",
      'answers': [
        {
          'text': "Start!",
        },
      ],
    },
    {
      'questionText': "State principle of superposition of forces.",
      'answers': [
        {
          'text':
              "Net force experienced by any charge in a group of charges is the vector sum of the forces acting on it due to rest of the charges of the group.",
        },
      ],
    },
    {
      'questionText':
          "Why do the electric field lines not form any closed loop",
      'answers': [
        {
          'text':
              "Because they originate from positive (+ve) charge and terminate at negative",
        },
      ],
    },
    {
      'questionText': "What is the physical significance of electric field?",
      'answers': [
        {
          'text':
              "From the knowledge of electric field intensity at any point, we can readily calculate the magnitude and the direction of force experienced by any charge qo placed at that point.",
        },
      ],
    },
    {
      'questionText':
          "Define the term electric dipole moment. Is it a scalar or a vector quantity?",
      'answers': [
        {
          'text':
              "The product of the magnitude of one of the point charges constituting an electric dipole and the separation between them is termed as electric dipole moment. It is a vector quantity.",
        },
      ],
    },
    {
      'questionText': "What is an ideal (point) dipole?",
      'answers': [
        {
          'text':
              "An ideal dipole is the dipole whose size (2a) is vanishingly small, and the magnitude of electric charges constituting by it is very large, and the product, i.e, 2aq is finite.",
        },
      ],
    },
    {
      'questionText':
          "If F is the magnitude of force experienced by a unit charge placed at a distance of 1 cm from an infinitely large charged sheet, then what will be the force experienced by the same charge placed at a distance of 2 cm from the same sheet? (HOTS)",
      'answers': [
        {
          'text':
              "In case of sheet of charge, the clectric field is constant. Hence,F qE will be same irrespective of distance.",
        },
      ],
    },
    {
      'questionText':
          "When does an electric dipole placed in a  non-uniform electric field experience a zero torque but non-zero force?",
      'answers': [
        {
          'text':
              "When the dipole axis is parallel to the direction of electric field.",
        },
      ],
    },
    {
      'questionText': "What is a Gaussian surface?",
      'answers': [
        {
          'text':
              "A Gaussian surface is an imaginary closed surface in three dimensional space through with the flux of a vector field is calculated.",
        },
      ],
    },
    {
      'questionText':
          "Why can a Gaussian surface not pass through any discrete charge?",
      'answers': [
        {
          'text':
              "Because the electric field due to a system of discrete charges is not defined at the location of any charge.",
        },
      ],
    },
    {
      'questionText':
          "What is the nature of electrostatic force between two point electric charges q1 and q2 if (a) q1 and q2>0, (b)q1+q2<0",
      'answers': [
        {
          'text':
              "(a) If both q and q2 are positive, the electrostatic force between these will be repulsive. However, if one of these charges is positive and is greater than the other negative charge, the electrostatic force between them will be attractive. Thus, the nature of force between them can be repulsive or attractive. (b) If both q1 and q2 are -ve, the force between these will be repulsive. However, if one of them is -ve and it is greater than the second +ve charge, the force between them will be attractive. Thus, the nature of force between them can be repulsive or attractive.",
        },
      ],
    },
    {
      'questionText':
          "Define electric field strength. Is it a vector or a scalar quantity?",
      'answers': [
        {
          'text':
              "The electric field strength at a point in an electric field is defined as the electrostatic force acting on unit positive charge when placed at that point and its direction is along the direction of electrostatic force. Electric field strength is a vector quantity.",
        },
      ],
    },
    {
      'questionText':
          "Write SI unit of (i) electric field intensity and (ii) electric dipole moment.",
      'answers': [
        {
          'text':
              "i) SI unit of electric field intensity is newton/coulomb (NC ). ii) SI unit of electric dipole moment is coulomb x metre (C m).",
        },
      ],
    },
    {
      'questionText':
          "Can electric potential at a point be zero, while the electric field is not zero?",
      'answers': [
        {
          'text':
              "Yes, electric potential is zero at all points on equatorial line of electric dipole, while electric field strength 1s not zero.",
        },
      ],
    },
    {
      'questionText':
          "Can electric field at a point be zero, while electric potential is not zero?[NCERT Exemplar]",
      'answers': [
        {
          'text':
              "Yes, inside a hollow charged metallic conductor, the electric field is zero, but electric potential is finite.",
        },
      ],
    },
    {
      'questionText':
          "Do free electrons travel to region of higher potential or lower potential?",
      'answers': [
        {
          'text':
              "Free electrons would travel to regions of higher potentials as they are negatively charged.",
        },
      ],
    },
    {
      'questionText':
          "Can there be a potential difference between two adjacent conductors carrying the same charge?[NCERT Exemplar]",
      'answers': [
        {
          'text': "Yes, if the sizes are different.",
        },
      ],
    },
    {
      'questionText':
          "Two protons are brought nearer; what will be the effect on potential energy of system?",
      'answers': [
        {
          'text':
              "A repulsive force acts between protons, if they are brought nearer, work must be done by external force; hence the potential energy of system increases.",
        },
      ],
    },
    {
      'questionText':
          "An electron and a proton are brought nearer; how does the potential energy of system change?",
      'answers': [
        {
          'text':
              "There is attractive force between an electron and a proton, therefore when they come nearer, the work is done by the system itself and so the potential energy of system decreases.",
        },
      ],
    },
    {
      'questionText':
          "Name the physical quantity whose SI unit is JC^-1. Is it a scalar or a vector quantity? [CBSE Delhi 2010]",
      'answers': [
        {
          'text': "Electric potential. It is a scalar quantity.",
        },
      ],
    },
    {
      'questionText':
          "What is the geometrical shape of equipotential surfaces due to a single isolated charge?[CBSE Delhi 2013]",
      'answers': [
        {
          'text':
              "Spherical shape with point charges q > 0 or q < 0 at the centre.",
        },
      ],
    },
    {
      'questionText':
          'For any charge configuration, equipotential surface through a point is normal to the electric field." Justify. [CBSE Delhi 2014]',
      'answers': [
        {
          'text':
              "The work done in moving a charge from one point to another on an equipotential surface is zero. If electric field is not normal to the equipotential surface, it would have non-zero component along the surface. In that case work would be done in moving a charge on an equipotential surface.",
        },
      ],
    },
    {
      'questionText':
          "Why must electrostatic field at the surface of a charged conductor be normal to the surface at every point? Give reason.[CBSE Delhi 2012, (F) 2014]",
      'answers': [
        {
          'text':
              "The work done in moving a charge from one point to another on an equipotential surface is zero. If electric field is not normal, it will have a non-zero component along the surface which would cause work to be done in Moving a charge on an equipotential surface.",
        },
      ],
    },
    {
      'questionText':
          'Why do the electric field lines never cross each other[All India 2014]',
      'answers': [
        {
          'text':
              'At the intersection point, if electric field lines cross each other, then there would be two directions of electric field which is not possible, so lines of forces never cross each other.',
        },
      ],
    },
    {
      'questionText':
          'Why must the electrostatic field at the surface of a charged conductor be perpendicular to every point on it?[Foreign 2014, Delhi 2012]',
      'answers': [
        {
          'text':
              'Electric field is defined to be the gradient of potential and the surface of a conductor has a constant potential. Therefore, there is no field along the surface of the conductor and, hence, the electrostatic field at the surface of a charged conductor should be normal to the surface at every point.',
        },
      ],
    },
    {
      'questionText':
          'A proton is placed in a uniform electric field directed along the positive X-axis. In which direction will it tend to move? [Delhi2011C]',
      'answers': [
        {
          'text':
              'Force on positive charge is always in the direction of electric field. So, proton being positive will tend to move along the X-axis in the direction of a uniform electric field.',
        },
      ],
    },
    {
      'questionText':
          'Point out right or wrong for the following statement.The mutual forces between two charges do not get affected by the presence of other charges. All India 2010',
      'answers': [
        {
          'text':
              'Right, because mutual force acting between two point charges is proportional to the product of magnitude of charges and inversely proportional to the square of the distance between them i.e. independent of the other charges.',
        },
      ],
    },
    {
      'questionText':
          'One end of a copper wire is connected to a neutral pith ball and other end to a negatively charged plastic rod. What will be the charge acquired by a pith ball?',
      'answers': [
        {
          'text': 'Negative charge.',
        },
      ],
    },
    {
      'questionText':
          'Distinguish between an insulator (dielectric) and a conductor.',
      'answers': [
        {
          'text':
              'Dielectrics do not have free electrons, while conductors have free electrons. When some charge is transferred to a conductor, it readily gets distributed over the entire surface of the conductor, but on insulators, the charge stays at the same place.',
        },
      ],
    },
    {
      'questionText':
          'Why does a nylon or plastic comb get electrified on combing or rubbing but a metal spoon does not?',
      'answers': [
        {
          'text':
              'The charge on a metal spoon discharges through our body to the ground as both are conductors. But when a nylon or plastic comb is rubbed, due to the friction its acquires a negative (-ve) charge, which stays on it as it is an insulator.',
        },
      ],
    },
    {
      'questionText':
          'Two metallic spheres having same shape and size, but one of Cu and other of Al, are both placed in an identical electric field. In which metallic sphere will more charge be induced?',
      'answers': [
        {
          'text':
              "Same charge will be induced on both the spheres. As the dielectric constant K is equal to infinity for metals and the induced charge is given by q'=-q(1-1/k) ",
        },
      ],
    },
    {
      'questionText': 'What does the additive nature of electric charge mean?',
      'answers': [
        {
          'text':
              'It means an electric charge is a scalar quantity and is added like algebraic numbers.',
        },
      ],
    },
    {
      'questionText':
          'If a body contains n1 electrons and n2 protons, then what will be the total amount of charge on the body?',
      'answers': [
        {
          'text':
              'Electric charge on n, electrons = -n1e and electric charge on n2 protons = -n2e .Therefore, the total charge (n2 - n1)e.',
        },
      ],
    },
    {
      'questionText': 'What does e(absolute permittivity) signify?',
      'answers': [
        {
          'text':
              'It is a measure of the degree to which a medium can resist the movement of charges.',
        },
      ],
    },
    {
      'questionText': 'Define 1 coulomb (1 C) of electric charge.',
      'answers': [
        {
          'text':
              'One coulomb is the charge when placed in vacuum at a distance of one metre from an equal and similar charge would repel it with a force of 9 x 10^9N.',
        },
      ],
    },
    {
      'questionText': 'Write two properties of an electrostatic force.',
      'answers': [
        {
          'text':
              '(a) It is conservative in nature.  (b) It depends on medium between the two charges.',
        },
      ],
    },
    {
      'questionText':
          'Is the force acting between two point electric charges q, and q, kept at some distance apart in air, attractive or repulsive when (i) q1q2> 0 (ii) q1q2 < 0? (i) When q1*q2> 0, force is repulsive  (ii) When q1*q2< 0, force is attractive.',
      'answers': [
        {
          'text':
              'The force on an electron kept in an electric field in a particular direction is F. What will be the magnitude and direction of the force experienced by a proton kept at the same point in the field? Mass of the proton is about 1836 times the mass of the electron. Same in magnitude and opposite in the direction as F=e.E',
        },
      ],
    },
    {
      'questionText':
          'How does the coulomb force between two point charges depend upon the dielectric constant of the intervening medium?',
      'answers': [
        {
          'text':
              'Coulomb force is inversely proportional to the dielectric constant of the intervening medium.',
        },
      ],
    },
    {
      'questionText': 'Two electric field lines never cross each other. Why?',
      'answers': [
        {
          'text':
              'Ans If two electron field lines cross each other, then at the point of intersection, there will be two tangents which is not possible.',
        },
      ],
    },
    {
      'questionText':
          'Name the physical quantity whose SI unit is V.m. Is it a vector or a scalar quantity?',
      'answers': [
        {
          'text':
              'The physical quantity is an electric flux. It is a scalar quantity.',
        },
      ],
    },
    {
      'questionText':
          'Define the dielectric constant of a medium. What is its unit? [Delhi 2011C]',
      'answers': [
        {
          'text':
              'Dielectric constant of a medium is defined as the ratio of the force between two charges placed a certain distance apart in vacuum to the force between the same two charges placed the same distance apart in the medium. It has no units.',
        },
      ],
    },
    {
      'questionText': 'When does a charged ring behave as a point charge?',
      'answers': [
        {
          'text':
              'When the radius of ring is much smaller than the distance under consideration.',
        },
      ],
    },
    {
      'questionText':
          'Two equal balls having equal positive charge q coulombs are suspended by two insulating strings of equal length. What would be the effect on the force when a plastic sheet is inserted between the two?',
      'answers': [
        {
          'text':
              'Electric force will reduce as plastic is an insulator. The force between the two charges will reduce by 1/K, where K is the dielectric constant of plastic.',
        },
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      // ignore: unnecessary_statements
      runApp(EC());
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
