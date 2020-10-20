import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch8-Electromagnetic Waves/physics.dart';

class TeXExample {
  static TeXViewWidget seventynine = _teXViewWidget(
      r"""<h4>Maxwell’s first equation ( gauss’s law in electrostatics): </h4>""",
      r""" 
     The total electric flux through any closed surface S is always equal to I/Eo times the net charge inside the surface.<br>
	 Inference : electric lines of force do not constitute continuous closed path<br>
      """);
  static TeXViewWidget eighty = _teXViewWidget(
      r"""<h4>Maxwell’s second equation ( gauss’s law in magnetism):  </h4>""",
      r""" 
     The total magnetic flux through a closed surface is zero.<br>
	 Inference : isolated magnetic poles do not exist in nature.<br>
      """);
  static TeXViewWidget eightyone = _teXViewWidget(
      r"""<h4> Maxwell’s third equation ( faraday’s law of electromagnetic induction ): </h4>""",
      r""" 
     The induction emf is numerically equal to time rate of change of magnetic flux<br>
	 Inference : time variation of magnetic field generated electric field.<br>
      """);
  static TeXViewWidget eightytwo = _teXViewWidget(
      r"""<h4>Maxwell’s fourth equation ( Maxwell-Ampere’s Ampere’s circuital law ):  </h4>""",
      r""" 
     The line integral of magnetic field along a closed path is equal to uo times the sum of conduction and displacement currents.<br>
	 Inference : time variation of electric field generates magnetic field.<br>
      """);
  static TeXViewWidget eightythree =
      _teXViewWidget(r"""<h4>Electromagnetic waves:  </h4>""", r""" 
     Produced  by accelerating charges.<br>
	 Propagate in the form of varying electric and magnetic fields that are perpendicular to each other and also to the direction of propagation of the wave.<br>
	 Transverse in nature and do not require any material for propagation.<br>
	 Obey principle of superposition.<br>
	 Travel with same speeds in vacuum but different speeds in a medium.<br>
	 Energy densities of electric and magnetic fields of plane electromagnetic waves are equal.<br>	
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
        title: Text("Ch8-Electromagnetic Waves"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXExample.seventynine,
              TeXExample.eighty,
              TeXExample.eightyone,
              TeXExample.eightytwo,
              TeXExample.eightythree,
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
                runApp(EW());
              },
            ),
        ],
      ),
    ));
  }
}
