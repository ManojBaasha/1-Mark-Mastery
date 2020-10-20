import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import "./deletedportions.dart";

class TeXExample {
  static TeXViewWidget one =
      _teXViewWidget(r"""<h4> Relations and Functions: </h4>""", r""" 
- Composite functions, inverse of a function      """);
  static TeXViewWidget two =
      _teXViewWidget(r"""<h4>  Inverse Trigonometric Functions: </h4>""", r""" 
      - Graphs of inverse trigonometric  functions

- Elementary properties of inverse trigonometric functions
      """);
  static TeXViewWidget three = _teXViewWidget(r"""<h4>Matrices </h4>""", r""" 
     	-  Existence of non-zero matrices whose product is the zero matrix.

-  Concept of elementary row and column operations.

-  Proof of the uniqueness of inverse, if it exists.
      """);
  static TeXViewWidget four = _teXViewWidget(r"""<h4>Determinants</h4>""", r""" 
     - Properties of determinants

- Consistency, inconsistency and number of  solutions of system of linear equations by examples
      """);
  static TeXViewWidget five =
      _teXViewWidget(r"""<h4> Continuity and Differentiability</h4>""", r""" 
     	- Rolle’s and Lagrange's Mean Value Theorems (without proof) and their geometric interpretation.
		
      """);
  static TeXViewWidget six =
      _teXViewWidget(r"""<h4>Applications of Derivatives</h4>""", r""" 
     - Rate of change of bodies, use of derivatives in approximation
      """);
  static TeXViewWidget seven = _teXViewWidget(r"""<h4> Integrals</h4>""", r""" 
- Definite integrals as a limit of a sum      """);
  static TeXViewWidget eight =
      _teXViewWidget(r"""<h4>Applications of the Integrals</h4>""", r""" 
- Area between any of the two above said curves      """);
  static TeXViewWidget nine =
      _teXViewWidget(r"""<h4>Differential Equations</h4>""", r""" 
- Formation of differential equation whose general solution is given.

- Solutions of linear differential equation of the type:

dx/dy + px = q, where p and q are function of y or constant.      """);
  static TeXViewWidget ten =
      _teXViewWidget(r"""<h4>Electric dipole:  </h4>""", r""" 
     is a pair of equal and opposite point charges separated by a very small distance	
      """);
  static TeXViewWidget eleven = _teXViewWidget(r"""<h4>Vectors</h4>""", r""" 
-  scalar triple product of vectors.      """);
  static TeXViewWidget twelve =
      _teXViewWidget(r"""<h4>Three - dimensional Geometry </h4>""", r""" 
Angle between (i) two lines, (ii) two planes, (iii) a line and a plane      """);
  static TeXViewWidget thirteen =
      _teXViewWidget(r"""<h4>Linear Programming</h4>""", r""" 
     - mathematical formulation of L.P. problems

- (unbounded)
      """);
  static TeXViewWidget fourteen =
      _teXViewWidget(r"""<h4>Probability</h4>""", r""" 
     - mean and variance of random variable. Binomial probability distribution. 
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
        title: Text("Ch1-Electric Charges And Fields"),
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
    ));
  }
}
