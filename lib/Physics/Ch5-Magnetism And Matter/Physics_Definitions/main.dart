import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch5-Magnetism And Matter/physics.dart';

class TeXExample {
  static TeXViewWidget one =
      _teXViewWidget(r"""<h4> Electrostatics: </h4>""", r""" 
       The branch of physics that deals the study of forces, fields and potential arising from static charges.<br>
      """);
  static TeXViewWidget two =
      _teXViewWidget(r"""<h4> Quantisation of Charge: </h4>""", r""" 
      electric charges are always some integral multiples of elementary charge e
      """);
  static TeXViewWidget three =
      _teXViewWidget(r"""<h4>Conservation Of Charge:   </h4>""", r""" 
     	The Algebraic Sum of positive and negative charges in an isolated system remains constant.
      """);
  static TeXViewWidget four =
      _teXViewWidget(r"""<h4>Additive nature of Charge:   </h4>""", r""" 
     	The total electric charge of a body is equal to the algebraic sum of all electric charges located anywhere in the body.
      """);
  static TeXViewWidget five =
      _teXViewWidget(r"""<h4> Coulomb's Law: </h4>""", r""" 
     	
		
      """);
  static TeXViewWidget six = _teXViewWidget(
      r"""<h4>Principle of superposition of electric forces:   </h4>""", r""" 
     	When a number of charges are interacting the total force on a given charge is the vector sum of the individual forces exerted on the given charge by all the other charges. 
      """);
  static TeXViewWidget seven =
      _teXViewWidget(r"""<h4> Electric field:  </h4>""", r""" 
     	The region of space around a charge or a system of charged particles within which other charged particles experience electrostatic forces. 
      """);
  static TeXViewWidget eight =
      _teXViewWidget(r"""<h4>An Electric line of force:  </h4>""", r""" 
     	An Electric line of force is an imaginary straight line or curved path along which a positive test charge is supposed to move when free to do so in an electric field 
      """);
  static TeXViewWidget nine = _teXViewWidget(
      r"""<h4>Properties of electric lines of force   </h4>""", r""" 
    1. Field lines start from positive charges and end at negative charges. 2. Two electric lines of force never cross each other 3. Electrostatic field lines never form any closed loops. 4. In a charge free region, electric field lines can be taken to be continuous curves without any breaks  	
      """);
  static TeXViewWidget ten =
      _teXViewWidget(r"""<h4>Electric dipole:  </h4>""", r""" 
     is a pair of equal and opposite point charges separated by a very small distance	
      """);
  static TeXViewWidget eleven =
      _teXViewWidget(r"""<h4> Electric dipole moment : </h4>""", r""" 
    The direction is from (-)ve charge to the (+) charge  	
      """);
  static TeXViewWidget twelve =
      _teXViewWidget(r"""<h4>Gauss's law in electrostatics:  </h4>""", r""" 
     The surface integral of the electric field intensity(E) over any closed hypothetical surface (Gaussian surface,S) in free space is equal to 1/€, times the net charge enclosed within the surface(q).	
      """);
  static TeXViewWidget thirteen =
      _teXViewWidget(r"""<h4>Linear Charge:   </h4>""", r""" 
     the charge per unit length	
      """);
  static TeXViewWidget fourteen =
      _teXViewWidget(r"""<h4>Surface charge density:  </h4>""", r""" 
     charge per unit area	
      """);
  static TeXViewWidget fifteen =
      _teXViewWidget(r"""<h4>Volume charge density:   </h4>""", r""" 
     charge per unit volume	 
      """);
  static TeXViewWidget sixteen =
      _teXViewWidget(r"""<h4>Electric field strength:  </h4>""", r""" 
     the force acting per unit positive test charge placed at that point	
      """);
  static TeXViewWidget seventeen =
      _teXViewWidget(r"""<h4>Electric Flux:  </h4>""", r""" 
     a measure of the total number of lines of forces passing normally through the surface.	
      """);
  static TeXViewWidget eighteen =
      _teXViewWidget(r"""<h4> Electric Dipole moment:  </h4>""", r""" 
    the product of the total magnitude of either charge and the distance between the charges. 	
      """);
  static TeXViewWidget nineteen = _teXViewWidget(
      r"""<h4>Relative permittivity or dielectric constant of a medium:  </h4>""",
      r""" 
    the ratio of absolute permittivity of the medium to the permittivity of free space 	
      """);
  static TeXViewWidget _teXViewWidget(String title, String body) {
    return TeXViewColumn(
        style: TeXViewStyle(
            margin: TeXViewMargin.all(10),
            padding: TeXViewPadding.all(10),
            borderRadius: TeXViewBorderRadius.all(10),
            border: TeXViewBorder.all(TeXViewBorderDecoration(
                borderWidth: 2,
                borderStyle: TeXViewBorderStyle.Groove,
                borderColor: Colors.blue))),
        children: [
          TeXViewDocument(title,
              style: TeXViewStyle(
                  padding: TeXViewPadding.all(10),
                  borderRadius: TeXViewBorderRadius.all(10),
                  textAlign: TeXViewTextAlign.Center,
                  width: 250,
                  margin: TeXViewMargin.zeroAuto(),
                  backgroundColor: Colors.blue)),
          TeXViewDocument(body,
              style: TeXViewStyle(margin: TeXViewMargin.only(top: 10)))
        ]);
  }
}

class TeXViewDocumentExamples extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;

  TeXViewDocumentExamples(
      {this.renderingEngine = const TeXViewRenderingEngine.katex()});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("RELATION AND FUNCTIONS"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXExample.one,
              TeXExample.two,
              TeXExample.three,
              TeXExample.four,
              TeXExample.five,
              TeXExample.six,
              TeXExample.seven,
              TeXExample.eight,
              TeXExample.nine,
              TeXExample.ten,
              TeXExample.eleven,
              TeXExample.twelve,
              TeXExample.thirteen,
              TeXExample.fourteen,
              TeXExample.fifteen,
              TeXExample.sixteen,
              TeXExample.seventeen,
              TeXExample.eighteen,
              TeXExample.nineteen,
            ]),
            style: TeXViewStyle(
              margin: TeXViewMargin.all(10),
              elevation: 10,
              borderRadius: TeXViewBorderRadius.all(25),
              border: TeXViewBorder.all(
                TeXViewBorderDecoration(
                    borderColor: Colors.blue,
                    borderStyle: TeXViewBorderStyle.Solid,
                    borderWidth: 5),
              ),
              backgroundColor: Colors.white,
            ),
            loadingWidgetBuilder: (context) => Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Text("The Window is loading. Please Wait..........")
                ],
              ),
            ),
          ),
          Ink(
            color: Colors.green[900],
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: ListTile(
              leading: Icon(Icons.add_circle),
              title: Text('Back',
                  style: new TextStyle(fontSize: 15.0, color: Colors.white)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(MM());
              },
            ),
          ),
        ],
      ),
    ));
  }
}
