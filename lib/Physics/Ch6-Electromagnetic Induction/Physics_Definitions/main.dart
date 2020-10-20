import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch6-Electromagnetic Induction/physics.dart';

class TeXExample {
  static TeXViewWidget sixtyfive =
      _teXViewWidget(r"""<h4> Magnetic Flux: </h4>""", r""" 
     No. of magnetic field lines crossing the surface normally	
      """);
  static TeXViewWidget sixtysix =
      _teXViewWidget(r"""<h4>Magnetic flux density:  </h4>""", r""" 
     Magnetic flux per unit area 	
      """);
  static TeXViewWidget sixtyseven =
      _teXViewWidget(r"""<h4> Induced EMF: </h4>""", r""" 
     current imduced in a circuit placed in a magnetic field when the flux linked with the circuit change	
      """);
  static TeXViewWidget sixtyeight =
      _teXViewWidget(r"""<h4> Induced current: </h4>""", r""" 
     current induced in a circuit placed in a magnetic field when there is a change in flux linked with the circuit.	
      """);
  static TeXViewWidget sixtynine = _teXViewWidget(
      r"""<h4> Faraday's law of electromagnetic induction: </h4>""", r""" 
     First Law: Whenever there is a change in flux linked with the circuit ; Second Law: The magnitude of induced EMF is directly proportional to the rate of change of magnetic flux linked with the circuit.	
      """);
  static TeXViewWidget seventy =
      _teXViewWidget(r"""<h4> Methods of producing induced EMF: </h4>""", r""" 
     	Change the magnetic field; Change the area of the loop; Change the angle between the field and the loop.
      """);
  static TeXViewWidget seventyone =
      _teXViewWidget(r"""<h4> Lenz Law: </h4>""", r""" 
     The direction of the induced current is such that it tends to produce a current which opposes the change that produces it.	
      """);
  static TeXViewWidget seventytwo =
      _teXViewWidget(r"""<h4> Fleming's left hand rule: </h4>""", r""" 
     Stretch the first finger,central finger and the thumb of the right hand in a mutually perpendicular directionof magnetic field, thumb in the direction of motion of the conductor, then the central finger points in the direction of the induced emf in the conductor.	
      """);
  static TeXViewWidget seventythree =
      _teXViewWidget(r"""<h4> Eddy currents :  </h4>""", r""" 
     Currents induced in a thick conductor when the conductor is placed in a changing magnetic field.	
      """);
  static TeXViewWidget seventyfour =
      _teXViewWidget(r"""<h4>Self-induction :  </h4>""", r""" 
     	1.	Characteristic property of a single coil.<br>
		2.	When current in the coil changes, induced current is set up in the same coil.<br>
      """);
  static TeXViewWidget seventyfive =
      _teXViewWidget(r"""<h4> Mutual –induction : </h4>""", r""" 
     1.	Characteristic property of two closely spaced coils.<br>
     2.	When current in a coil changed , induced emf  is set up in the neighbouring coil.<br>
      """);
  static TeXViewWidget seventysix =
      _teXViewWidget(r"""<h4> An ac generator </h4>""", r""" 
     1.	Works on the principle of electromagnetic induction.<br>
     2.	The emf  is alternating (equation has a sine function)<br>	 
      """);
  static TeXViewWidget seventyseven =
      _teXViewWidget(r"""<h4>Transformer :  </h4>""", r""" 
     1.	Works on the principle of mutual induction of a pair of coils wound on a soft magnetic core.<br>
     2.	Core is made of solft iron and is laminated.<br>	 
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
        title: Text("Ch6-Electromagnetic Induction"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXExample.sixtyfive,
              TeXExample.sixtyseven,
              TeXExample.sixtysix,
              TeXExample.sixtyeight,
              TeXExample.sixtynine,
              TeXExample.seventy,
              TeXExample.seventyone,
              TeXExample.seventytwo,
              TeXExample.seventythree,
              TeXExample.seventyfour,
              TeXExample.seventyfive,
              TeXExample.seventysix,
              TeXExample.seventyseven,
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
          ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Back",
                  style: new TextStyle(
                    fontSize: 30.0,
                  )),
              onTap: () {
                runApp(EI());
              },
            ),
        ],
      ),
    ));
  }
}
