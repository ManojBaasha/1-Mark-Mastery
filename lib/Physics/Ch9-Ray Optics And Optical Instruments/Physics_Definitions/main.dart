import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch9-Ray Optics And Optical Instruments/physics.dart';

class TeXExample {
  static TeXViewWidget eightyfour =
      _teXViewWidget(r"""<h4> Laws of reflection:  </h4>""", r""" 
     	The incident ray, reflected ray and the normal at the point of incidence , all lie in one plane.<br>
		Angle of incidence is equal to angle of reflection.<br>
		Spherical mirrors are of two types – convex and concave.<br>
		Apply sign conventions while solving numerical problems. No sign to unknown quantiy <br>
		Concave mirrors  are used in astronomical telescopes , shaving mirrors etc.<br>
		Convex mirrors are used as rear view mirrors.<br>
      """);
  static TeXViewWidget eightyfive =
      _teXViewWidget(r"""<h4> Laws of refraction : </h4>""", r""" 
     	1.	The incident ray, the normal to the refracting surface at the point of incidence and the refracted ray all lie in the same plane.<br>
		2.	Snell’s law of refraction : For a given pair of media and for a given wavelength of light, the ratio of the sine of angle of incidence to the sine of angle refraction is a constant.<br>
      """);
  static TeXViewWidget eightysix =
      _teXViewWidget(r"""<h4>Total Internal reflection:  </h4>""", r""" 
     	1.	The complete reflection of light back into the same medium for angles of incidence greater than the critical angle. Applications : mirage , optical fibres , diamonds.<br>
		2.	The incident light should be in optically denser medium.<br>
      """);
  static TeXViewWidget eightyseven =
      _teXViewWidget(r"""<h4> Refraction at spherical surfaces : </h4>""", r""" 
     	1.	Refraction from rarer to denser medium.<br>
		2.	Refraction from denser to rarer medium.<br>
		A  lens is a piece of transparent refracting material bounded by two surfaces out of which at least one is curved.<br>
		Sum of angle of incidence and emergence is equal to the sum of angle of deviation and angle of prism.<br>
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
              TeXExample.eightyfour,
              TeXExample.eightyfive,
              TeXExample.eightysix,
              TeXExample.eightyseven,
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
                runApp(RO());
              },
            ),
          ),
        ],
      ),
    ));
  }
}
