import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'package:class_app/Physics/Ch2-Electrostatic Potential and Capacitance/physics.dart';

class TeXExample {
  static TeXViewWidget twenty =
      _teXViewWidget(r"""<h4>Equipotential surface:   </h4>""", r""" 
    is the locus of points at which the potential due to a charge distribution is the same. <br>
 	The electric field is always perpendicular to the equipotential surface.<br>
	The charge on a conductor resides only on its surface.<br>
	The ratio QNV is found to be a constant for a given conductor and is called capacitance.<br>
	S.I. unit is farad (F)  
      """);
  static TeXViewWidget twentyone =
      _teXViewWidget(r"""<h4>Elactrostatic Potential:  </h4>""", r""" 
    the work done per unit positive charge. 	
      """);
  static TeXViewWidget twentytwo = _teXViewWidget(
      r"""<h4>Electrostatic potential energy of a system of point charge:  </h4>""",
      r""" 
     the work required to assemble the charges by bringing them from an infinite distance 	
      """);
  static TeXViewWidget twentythree =
      _teXViewWidget(r"""<h4>Parallel plate capacitor:  </h4>""", r""" 
     a device to hold the charge that consists of two identical parallel metal plates separated by a dielectric	
      """);
  static TeXViewWidget twentyfour =
      _teXViewWidget(r"""<h4>Energy of a charged capacitor:  </h4>""", r""" 
     Total work done in charging the capacitor to a given potential 	
      """);
  static TeXViewWidget twentyfive =
      _teXViewWidget(r"""<h4>Energy Density:  </h4>""", r""" 
    Energy stored per unit volume of a capacitor
      """);
  static TeXViewWidget twentysix =
      _teXViewWidget(r"""<h4> Polarization:  </h4>""", r""" 
     	The dipole moment per unit volume of the dielectric.
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
        title: Text("Ch2-Electrostatic Potential and Capacitance"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXExample.twenty,
              TeXExample.twentyone,
              TeXExample.twentytwo,
              TeXExample.twentythree,
              TeXExample.twentyfour,
              TeXExample.twentyfive,
              TeXExample.twentysix,
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
                runApp(ES());
              },
            ),
          ),
        ],
      ),
    ));
  }
}
