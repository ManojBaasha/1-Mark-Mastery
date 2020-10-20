import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/deletedPortions/deletedportions.dart';

class TeXExample {
  static TeXViewWidget one =
      _teXViewWidget(r"""<h4> Chapter-1,Solid State </h4>""", r""" 
Electrical and magnetic properties. Band theory of metals, conductors, semiconductors and insulators and n and p type semi conductors.     """);
  static TeXViewWidget two =
      _teXViewWidget(r"""<h4>Chapter-2,Solutions</h4>""", r""" 
      Abnormal molecular mass, Van't Hoff factor
      """);
  static TeXViewWidget three =
      _teXViewWidget(r"""<h4>Chapter-3, ElectroChemistry</h4>""", r""" 
     	Lead accumulator, fuel cells, corrosion, law of electrolysis (elementary idea), dry cell- electrolytic cells and Galvaniccells,
      """);
  static TeXViewWidget four =
      _teXViewWidget(r"""<h4>Chapter-4,Chemical Kinetics</h4>""", r""" 
    Concept of collision theory (elementary idea, no mathematical treatment), activation energy, Arrhenius equation
      """);
  static TeXViewWidget five =
      _teXViewWidget(r"""<h4> Chapter-5,Surface Chemistry</h4>""", r""" 
     	emulsion - types of emulsions, catalysis: homogenous and heterogeneous, activity and selectivity of solid catalysts;
                  enzyme catalysis, 
      """);
  static TeXViewWidget six =
      _teXViewWidget(r"""<h4>Chapter-7,p-block Elements</h4>""", r""" 
     Preparation and properties of Phosphine, Sulphuric Acid:
     industrial process of manufacture, Oxides of Nitrogen (Structure only); Phosphorus - allotropic forms, compounds of
   Phosphorus: Preparation and properties of Halides and Oxo acids (elementary idea only)""");

  static TeXViewWidget seven =
      _teXViewWidget(r"""<h4>Chapter-8,d anf f block elements</h4>""", r""" 
    Chemical reactivity of lanthanoids, Actinoids -Electronic
    configuration, oxidation states and comparison with lanthanoids.
Preparation and properties of KMnO4 and K2Cr2O7

""");
  static TeXViewWidget eight =
      _teXViewWidget(r"""<h4>Chapter-9,Co-ordination Compounds</h4>""", r""" 
Structure and stereoisomerism, importance of coordination
compounds (in qualitative analysis, extraction of metals and
biological system)
  """);

  static TeXViewWidget nine = _teXViewWidget(
      r"""<h4>Chapter-10,Haloalkanes and Haloarenes</h4>""", r""" 
Uses and environmental effects of -dichloromethane,
trichloromethane, tetrachloromethane, iodoform, freons, DDT  """);

  static TeXViewWidget ten =
      _teXViewWidget(r"""<h4>Electric dipole:  </h4>""", r""" 
     is a pair of equal and opposite point charges separated by a very small distance	
      """);

  static TeXViewWidget eleven = _teXViewWidget(
      r"""<h4>Chapter-11,Alcohols,Phenols and Ethers</h4>""", r""" 
uses with special reference to methanol and ethanol.   """);

  static TeXViewWidget twelve =
      _teXViewWidget(r"""<h4>Chapter-13,Amines</h4>""", r""" 
Diazonium salts: Preparation, chemical reactions and"
importance in synthetic organic chemistry.""");

  static TeXViewWidget thirteen =
      _teXViewWidget(r"""<h4>Chapter-14,BioMolecules</h4>""", r""" 
    Oligosaccharides (sucrose, lactose, maltose), polysaccharides
(starch, cellulose, glycogen), importance of carbohydrates.
Vitamins– classification and functions. Enzymes. Hormones -
Elementary idea excluding structure.
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

class TeXViewDocumentExamples2 extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;

  TeXViewDocumentExamples2(
      {this.renderingEngine = const TeXViewRenderingEngine.katex()});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Chemistry Deleted Portions"),
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
                  runApp(Deleted_Portions());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
