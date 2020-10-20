import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/deletedPortions/deletedportions.dart';

class TeXExample {
  static TeXViewWidget one = _teXViewWidget(
      r"""<h4> Chapter-1,Electric Charges And Fields </h4>""", r""" 
Uniformly Charged Thin Spherical Shell    """);
  static TeXViewWidget two =
      _teXViewWidget(r"""<h4>Chapter-3,Current Electricity</h4>""", r""" 
      Carbon Resistors\n Colour code of Carbon Resistors \n Series And Parallel Combination Of Resistors
      """);
  static TeXViewWidget three = _teXViewWidget(
      r"""<h4>Chapter-4,Moving Charges And Magnetism</h4>""", r""" 
     	Cyclotron
      """);
  static TeXViewWidget four =
      _teXViewWidget(r"""<h4>Chapter-5,Magnetism And Matter</h4>""", r""" 
   Magnetic Field Intensity Due To a Magnetic Dipole along and perpendicular to its axis\n Torque On a Magnetic Dipole in a uniform magnetic Field
      """);
  static TeXViewWidget five =
      _teXViewWidget(r"""<h4>Chapter-7,Alternating Current</h4>""", r""" 
     Power Factors And Wattless Current
      """);
  static TeXViewWidget six =
      _teXViewWidget(r"""<h4>Chapter-8,Electromagnetic Waves</h4>""", r""" 
    Basic Idea Of Displacement Current""");

  static TeXViewWidget seven = _teXViewWidget(
      r"""<h4>Chapter-9,Ray Optics And Optical Instruments</h4>""", r""" 
    Reflection Of Light,Spherical Mirrors,Mirror Formula\nScattering Of Light\nResolving Power Of MicroScope And Astronomical Telescope\nPolarisation

""");
  static TeXViewWidget eight = _teXViewWidget(
      r"""<h4>Chapter-11,Dual Nature Of Radiation And Matter</h4>""", r""" 
Davisson-Germer Experiment
  """);

  static TeXViewWidget nine =
      _teXViewWidget(r"""<h4>Chapter-13,Nuclei</h4>""", r""" 
RadioActivity,Alpha,Beta,Gamma Particles\nRadioactive Decay Law And Half Life And Mean Life """);

  static TeXViewWidget ten = _teXViewWidget(
      r"""<h4>Chapter-14,Semiconductors Electronics</h4>""", r""" 
     Zener Diode And Their characteristics\nZener As a Voltage Regulator
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

class TeXViewDocumentExamples3 extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;

  TeXViewDocumentExamples3(
      {this.renderingEngine = const TeXViewRenderingEngine.katex()});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Physics Deleted Portions"),
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
