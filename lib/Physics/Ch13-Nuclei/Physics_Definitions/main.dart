import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch13-Nuclei/physics.dart';

class TeXExample {
  static TeXViewWidget hundredseven =
      _teXViewWidget(r"""<h4> Hydrogen spectra </h4>""", r""" 
     	A nucleus has protons and neutrons. No. of protons = no. of electrons in the atom.<br>
        Number of neutrons  =  mass number ( A) – atomic number ( Z )<br>
        Nuclear volume is proportional to mass number.<br>
        Nuclear density does not depend on mass number and has a very high value.<br>
      """);
  static TeXViewWidget hundredeight =
      _teXViewWidget(r"""<h4> Isotopes : </h4>""", r""" 
     atoms having same no. of protons but different no. of neutrons.	
      """);
  static TeXViewWidget hundrednine =
      _teXViewWidget(r"""<h4> Isobars :  </h4>""", r""" 
      no. of protons in one atom = no. of neutrons in the other.	
      """);
  static TeXViewWidget hundredten =
      _teXViewWidget(r"""<h4> Isotones :  </h4>""", r""" 
    atoms whose nuclei have the same number of neutrons.  	
      """);
  static TeXViewWidget hundredeleven =
      _teXViewWidget(r"""<h4>Mass defect :   </h4>""", r""" 
     The difference between the rest mass of the nucleus and the sum of the masses of the nucleons composing the nucleus.	
      """);
  static TeXViewWidget hundredtwelve =
      _teXViewWidget(r"""<h4>Binding energy :   </h4>""", r""" 
     	 The energy required to break up a nucleus in to its constituent parts.
      """);
  static TeXViewWidget hundredthirteen =
      _teXViewWidget(r"""<h4>Properties of nuclear force :  </h4>""", r""" 
     	non – central , short range , charge independent, spin- dependent.
      """);
  static TeXViewWidget hundredfourteen =
      _teXViewWidget(r"""<h4>Radioactivity :  </h4>""", r""" 
     	A nuclear phenomenon in which an unstable nucleus undergoes decay.
      """);
  static TeXViewWidget hundredfifteen =
      _teXViewWidget(r"""<h4>Radioactive decay law :  </h4>""", r""" 
     1.	Disintegration is a random process.<br>
     2.	Rate of decay is independent of physical composition and chemical condition.<br>
     3.	Rate of decay is directly proportional to the quantity of material present.	<br>
      """);
  static TeXViewWidget hundredsixteen =
      _teXViewWidget(r"""<h4>Half- life period :  </h4>""", r""" 
     Time required for the disappearance of half of the amount of radioactive substance originally present.	
      """);
  static TeXViewWidget hundredseventeen =
      _teXViewWidget(r"""<h4> Nuclear fission : </h4>""", r""" 
     a heavy nucleus splits up in to two smaller nuclei with liberation of energy.	
      """);
  static TeXViewWidget hundredeighteen =
      _teXViewWidget(r"""<h4> Nuclear fusion : </h4>""", r""" 
    lighter nuclei merge into one another to form heavier nucleus.<br> 	
	Energy liberated In fission is much higher than fission reactions.<br>
    E.g. for nuclear fusion reactions : Carbon-Nitrogen cycle, proton – proton cycle (energy source of stars and sun)<br>
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
        title: Text("Ch13-Nuclei"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: TeXViewRenderingEngine.katex(),
            child: TeXViewColumn(children: [
              TeXExample.hundredseven,
              TeXExample.hundredeight,
              TeXExample.hundrednine,
              TeXExample.hundredten,
              TeXExample.hundredeleven,
              TeXExample.hundredtwelve,
              TeXExample.hundredthirteen,
              TeXExample.hundredfourteen,
              TeXExample.hundredfifteen,
              TeXExample.hundredsixteen,
              TeXExample.hundredseventeen,
              TeXExample.hundredeighteen,
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
                runApp(N());
              },
            ),
          ),
        ],
      ),
    ));
  }
}
