import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch10-Wave Optics/physics.dart';

class TeXExample {
  static TeXViewWidget eightyeight =
      _teXViewWidget(r"""<h4> Waveoptics </h4>""", r""" 
     	A wavefront  is a locus of points having the same phase of oscillation.
      """);
  static TeXViewWidget eightynine =
      _teXViewWidget(r"""<h4>Huygens’ principle :  </h4>""", r""" 
     	Each point is a fresh source of disturbance<br>
		New wavefront  is obtained by taking forward envelope of secondary wavelets.<br>
		Amplitude of particles on a backward wavefront is zero.<br>
      """);
  static TeXViewWidget ninety =
      _teXViewWidget(r"""<h4>Coherent source of light :  </h4>""", r""" 
     waves of same wavelength, frequency and having constant phase difference.	
      """);
  static TeXViewWidget ninetyone =
      _teXViewWidget(r"""<h4> Superposition of waves: </h4>""", r""" 
     	The displacement , due to a number of waves acting simultaneously , at a point , in a medium is the vector sum of the displacement vectors due to each one of them acting separately.
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
        title: Text("Ch10-Wave Optics"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXExample.eightyeight,
              TeXExample.eightynine,
              TeXExample.ninety,
              TeXExample.ninetyone,
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
                runApp(WO());
              },
            ),
        ],
      ),
    ));
  }
}
