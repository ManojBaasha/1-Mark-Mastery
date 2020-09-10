import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch14-Semiconductor Electronics Materials Devices And Simple Circuits/physics.dart';

class TeXExample {
  static TeXViewWidget hundrednineteen =
      _teXViewWidget(r"""<h4> Energy band :  </h4>""", r""" 
     	Collection of a large number of very closely spaced energy levels in solids. Lower , completely filled band is called valence band ; upper unfilled band – conduction band.
      """);
  static TeXViewWidget hundredtwenty =
      _teXViewWidget(r"""<h4> Fermi level: </h4>""", r""" 
     The highest energy level in the conduction band occupied by electrons is a crystal at absolute zero of temperature.	
      """);
  static TeXViewWidget hundredtwentyone =
      _teXViewWidget(r"""<h4> Semiconductor : </h4>""", r""" 
     	1.	Behaves like an insulator at 0 degree absolute like a conductor as temperature arises;<br>
        2.	By doping with external impurities ( extrinsic semiconductors – p-type or n-type),conductivity is vastly increased.
      """);
  static TeXViewWidget hundredtwentytwo =
      _teXViewWidget(r"""<h4> Rectification : </h4>""", r""" 
     The process of converting alternating current in to direct current.	
      """);
  static TeXViewWidget hundredtwentythree =
      _teXViewWidget(r"""<h4> P-n junction diode: </h4>""", r""" 
     	a single semiconductor crystal that has been selectively doped so that one region is n - type and the adjacent region is p-type.<br>
     Diode can be used for rectification. A diode cannot give amplification.
	 """);
  static TeXViewWidget hundredtwentyfour =
      _teXViewWidget(r"""<h4>A Zener diode :  </h4>""", r""" 
     	a p-n junction diode specially designed to work only in reverse breakdown region.<br>
		A Light – emitting diode ( LED ) is heavily doped p-n junction diode which emits visible light under forward bias.
      """);
  static TeXViewWidget hundredtwentyfive =
      _teXViewWidget(r"""<h4>Junction transistor :  </h4>""", r""" 
    1.	Was invented by J. Bardeen and W.H.Brattain in 1948<br>
    2.	Current is carried by electrons and holes ; are two types : n-p-n and p-n-p<br>
    3.	Can be used as an amplifier and oscillator. <br>	
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
              TeXExample.hundrednineteen,
              TeXExample.hundredtwenty,
              TeXExample.hundredtwentyone,
              TeXExample.hundredtwentytwo,
              TeXExample.hundredtwentythree,
              TeXExample.hundredtwentyfour,
              TeXExample.hundredtwentyfive,
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
                runApp(S());
              },
            ),
          ),
        ],
      ),
    ));
  }
}
