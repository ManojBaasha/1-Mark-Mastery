import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch3-Current Electricity/physics.dart';

class TeXExample {
  static TeXViewWidget twentyseven =
      _teXViewWidget(r"""<h4>Electric current :  </h4>""", r""" 
     Rate of flow of electric charge.	
      """);
  static TeXViewWidget twentyeight =
      _teXViewWidget(r"""<h4>Drift velocity :  </h4>""", r""" 
     The velocity with which free e-1 gets drifted towards the (+) ve terminal due to the applied electric filed.	
      """);
  static TeXViewWidget twentynine =
      _teXViewWidget(r"""<h4>Current density:  </h4>""", r""" 
     Current through an unit area perpendicular to the direction of flow of current.	
      """);
  static TeXViewWidget thirty =
      _teXViewWidget(r"""<h4> Resistance : </h4>""", r""" 
     Opposition offered by the conductor to the flow of current.	
      """);
  static TeXViewWidget thirtyone =
      _teXViewWidget(r"""<h4>Resistivity:  </h4>""", r""" 
    Resistance of the material of unit length and unit cross sectional area. 	
      """);
  static TeXViewWidget thirtytwo =
      _teXViewWidget(r"""<h4> Conductance :  </h4>""", r""" 
     Reciprocal of resistance.	
      """);
  static TeXViewWidget thirtythree =
      _teXViewWidget(r"""<h4> Electrical conductivity :  </h4>""", r""" 
     Reciprocal of resistivity.	
      """);
  static TeXViewWidget thirtyfour = _teXViewWidget(
      r"""<h4>Temperature coefficient of resistance:  </h4>""", r""" 
     The change in temparature per unit resistance at 0 degree C per degreee rise of temparature.	
      """);
  static TeXViewWidget thirtyfive =
      _teXViewWidget(r"""<h4>Electromotive force (emf):  </h4>""", r""" 
     Work done per unit charge.	
      """);
  static TeXViewWidget thirtysix =
      _teXViewWidget(r"""<h4>Electrical energy :  </h4>""", r""" 
     Total work done by an electric current in a given time.	
      """);
  static TeXViewWidget thirtyseven =
      _teXViewWidget(r"""<h4>Electric Power :  </h4>""", r""" 
     Rate at which work is done by an electric current.	
      """);
  static TeXViewWidget thirtyeight =
      _teXViewWidget(r"""<h4> Internal resistance of a cell:  </h4>""", r""" 
	The opposition offered by the electrolyte to the flow of electric current through it.  
      """);
  static TeXViewWidget thirtynine =
      _teXViewWidget(r"""<h4>Conductors:  </h4>""", r""" 
     materials whose electrical conductivity is very high e.g.Silver.	
      """);
  static TeXViewWidget forty =
      _teXViewWidget(r"""<h4>Ohm's law :   </h4>""", r""" 
     physical conditions such as temperature etc. remaining constant , the electric current flowing through a conductor is directly proportional to the potential difference across the two ends of the conductor <br>	
      Conductors which do not obey ohms law are non-ohmic conductors e.g. transistors, thermistors.<br>
	  """);
  static TeXViewWidget fortyone =
      _teXViewWidget(r"""<h4>Kirchoff's first law or Loop Rule.  </h4>""", r""" 
     The algebraic sum of all the potential drops and emfs along any closed path in a network is zero.	
      """);
  static TeXViewWidget fortytwo =
      _teXViewWidget(r"""<h4> Wheatstone bridge :   </h4>""", r""" 
     	An arrangement of four resistances used for measuring one of them using the other three. Ina balanced Wheatstone bridge network, I g = 0, that is R/Z = X/Y.
      """);
  static TeXViewWidget fortythree =
      _teXViewWidget(r"""<h4> Metre bridge :   </h4>""", r""" 
     is a practical application of wheatstone bridge used for measuring or comparing unknown resistances.	
      """);
  static TeXViewWidget fortyfour =
      _teXViewWidget(r"""<h4>Potentiometer :  </h4>""", r""" 
     	Principle : Then potential difference across any length is proportional to its length when a constant current flows through it . V al <br>
     Smaller the potential difference that can be measured , more is the sensitivity.<br>
	 Used for comparisions of emfs and determination of internal resistance of a cell.
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
        title: Text("Ch3-Current Electricity"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXExample.twentyseven,
              TeXExample.twentyeight,
              TeXExample.twentynine,
              TeXExample.thirty,
              TeXExample.thirtyone,
              TeXExample.thirtytwo,
              TeXExample.thirtythree,
              TeXExample.thirtyfour,
              TeXExample.thirtysix,
              TeXExample.thirtyseven,
              TeXExample.thirtyeight,
              TeXExample.thirtynine,
              TeXExample.forty,
              TeXExample.fortyone,
              TeXExample.fortytwo,
              TeXExample.fortythree,
              TeXExample.fortyfour,
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
                runApp(CE());
              },
            ),
        ],
      ),
    ));
  }
}
