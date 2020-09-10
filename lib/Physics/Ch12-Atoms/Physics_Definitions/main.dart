import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch12-Atoms/physics.dart';

class TeXExample {
  static TeXViewWidget hundredthree = _teXViewWidget(
      r"""<h4> Alpha particle scattering experiment:  </h4>""", r""" 
     	1.	Performed by Ernest Rutherford to probe inner structure of atoms.<br>
        2.	X particles from Radon source were made incident on a thin gold foil.<br>
        3.	Most x particle passed straight through or were scattered by very small angles.<br>
        4.	A few particles were deflected through 180 degree<br>
      """);
  static TeXViewWidget hundredfour =
      _teXViewWidget(r"""<h4>Rutherford’s model of atom.  </h4>""", r""" 
     1.	All positive charges and nearly the entire mass of the atom is concentrated in the nucleus.<br>
     2.	Nucleus radius is about    1/ 10000 times atomic radius.<br>
     3.	Electrons are continuously revolving around the nucleus in circular orbits.<br>
     4.	Amount of (+) ve charge on nucleus = amount of (-) ve charge on electrons.<br>
     5.	Could explain the observations of gold foil experiment and periodic table.<br>
     6.	Could not explain the stability of an atom, line spectra of atoms.<br>	
      """);
  static TeXViewWidget hundredfive =
      _teXViewWidget(r"""<h4> Bohr’s atom model : </h4>""", r""" 
     1.	An atom has a very tiny (+)vely charged nucleus, where almost the entire mass of the atom is concentrated.<br>
     2.	Electrons revolve around the nucleus in certain permitted circular orbits.<br>
     3.	Condition for radius of permitted orbit.<br>
     4.	An electron in a permitted orbit does not radiate energy.<br>
     5.	Could not explain fine structure or relative intensities of spectral lines.<br>	
      """);
  static TeXViewWidget hundredsix =
      _teXViewWidget(r"""<h4>Hydrogen atom :  </h4>""", r""" 
     1.	Stationary orbits are not equally placed.<br>
     2.	Bohr radius = 0.53 A<br>	
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
              TeXExample.hundredthree,
              TeXExample.hundredfour,
              TeXExample.hundredfive,
              TeXExample.hundredsix,
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
                runApp(A());
              },
            ),
          ),
        ],
      ),
    ));
  }
}
