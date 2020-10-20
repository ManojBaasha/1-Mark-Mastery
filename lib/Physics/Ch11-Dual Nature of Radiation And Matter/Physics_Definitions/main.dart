import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch11-Dual Nature of Radiation And Matter/physics.dart';

class TeXExample {
  static TeXViewWidget ninetytwo =
      _teXViewWidget(r"""<h4>Work function : </h4>""", r""" 
     the minimum amount of energy required to eject an electron from a surface without imparting any kinetic energy to the electron.	
      """);
  static TeXViewWidget ninetythree =
      _teXViewWidget(r"""<h4> Photoelectric effect : </h4>""", r""" 
     	The phenomenon of emission of electrons from a metallic surface when illuminated by light of appropriate frequency.
      """);
  static TeXViewWidget ninetyfour =
      _teXViewWidget(r"""<h4> Hertz and Lenard’s observations : </h4>""", r""" 
     When UV radiations were allowed to fall on the emiiter plate of an evacuated glass tube enclosing two electrodes, current flows in the circuit.	
      """);
  static TeXViewWidget ninetyfive =
      _teXViewWidget(r"""<h4> Effect of intensity : </h4>""", r""" 
     	photoelectric current increases linearly with intensity of incident radiation.
      """);
  static TeXViewWidget ninetysix =
      _teXViewWidget(r"""<h4>Effect of potential :  </h4>""", r""" 
     	a.	At zero potential : a small photoelectric current is observed.<br>
		b.	Collector at positive potential : the photocurrent increases with increase in accelerating potential and reaches a maximum ( saturation current )<br>
		c.	At retarding potential : photoelectric current decreases rapidly and becomes zero ( at stopping potential ). Stopping potential does not change with intensity.<br>
      """);
  static TeXViewWidget ninetyseven = _teXViewWidget(
      r"""<h4>Effect of frequency on stopping potential.  </h4>""", r""" 
     The stopping potential is more negative for higher frequencies.	
      """);
  static TeXViewWidget ninetyeight =
      _teXViewWidget(r"""<h4> Threshold frequency :  </h4>""", r""" 
     	the lowest limiting frequency below which the incident radiations are unable to cause any photoelectric emissions.
      """);
  static TeXViewWidget ninetynine =
      _teXViewWidget(r"""<h4>Law of photoelectric emission:  </h4>""", r""" 
     	1.	For a given material , there is no photoelectric emission below its threshold frequency.<br>
		2.	The photoelectric current is directly proportional to the intensity of radiation.<br>
		3.	The max. Kinetic  energy of photoelectrons is directly proportional to only the frequency of incident radiation and not the intensity.<br>
		4.	It is an instantaneous process.<br>
      """);
  static TeXViewWidget hundred = _teXViewWidget(
      r"""<h4> Einstein’s Photoelectric equation and particle nature of light:   </h4>""",
      r""" 
     	1.	Light radiation is emitted or absorbed in steps of discrete units or quanta.<br>
		2.	A quantum of light is known as photon.<br>
		3.	Photons are electrically neutral.<br>
		4.	Energy of each photon is E=hv<br>
		5.	A single photon knocks out a single electron in photoelectric emission.<br>
		6.	The higher the intensity , the greater the no. of photons  and hence , more photoelectrons are emitted.<br>
      """);
  static TeXViewWidget hundredone =
      _teXViewWidget(r"""<h4>De Broglie wave relation.  </h4>""", r""" 
     	1.	Waves  associated with matter are called matter waves or de Broglie waves.<br>
		2.	Matter waves are associated only with material particles in motion.<br>
		3.	 Smaller the particle, higher is the wavelength.<br>
        4.	Wavelength is independent of charge of the particle.<br>
      """);
  static TeXViewWidget hundredtwo =
      _teXViewWidget(r"""<h4>Davisson and German experiment  </h4>""", r""" 
     	1.	First experimental proof for wave nature of material particles.<br>
        2.	Based on scattering of a beam of electrons by nickel crystal.<br>
        3.	 The observed phenomenon was similar to different of X-rays.<br>
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
        title: Text("Ch11-Dual Nature of Radiation And Matter"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXExample.ninetytwo,
              TeXExample.ninetythree,
              TeXExample.ninetyfive,
              TeXExample.ninetysix,
              TeXExample.ninetyseven,
              TeXExample.ninetyeight,
              TeXExample.ninetynine,
              TeXExample.hundred,
              TeXExample.hundredtwo,
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
                runApp(DN());
              },
            ),
        ],
      ),
    ));
  }
}
