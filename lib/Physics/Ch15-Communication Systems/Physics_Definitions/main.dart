import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Physics/Ch15-Communication Systems/physics.dart';

class TeXExample {
  static TeXViewWidget hundredtwentysix = _teXViewWidget(
      r"""<h4> There are two basic modes of communication : </h4>""", r""" 
     	point - to - point and broadcast.<br>
		In point -to-point , a link exists between a single transmitter and a receiver  E.g. telephone.
      """);
  static TeXViewWidget hundredtwentyseven =
      _teXViewWidget(r"""<h4>In broadcast mode :  </h4>""", r""" 
     a large no. of receivers corresponding to a single transmitter . e.g. radio.	
      """);
  static TeXViewWidget hundredtwentyeight =
      _teXViewWidget(r"""<h4> Transducer : </h4>""", r""" 
     	Any device that converts one form of energy in to another.
      """);
  static TeXViewWidget hundredtwentynine =
      _teXViewWidget(r"""<h4> Signal : </h4>""", r""" 
     	Information converted in electrical formand suitable for transmission
      """);
  static TeXViewWidget hundredthirty =
      _teXViewWidget(r"""<h4> Noise : </h4>""", r""" 
     	the unwanted signals that tend to disturb the transmission and processing of message signals in a communication system.
      """);
  static TeXViewWidget hundredthirtyone =
      _teXViewWidget(r"""<h4> Transmitter :  </h4>""", r""" 
      processes the incoming message signal so as to make it suitable for transmission through a channel and subsequent reception.	
      """);
  static TeXViewWidget hundredthirtytwo =
      _teXViewWidget(r"""<h4>Receiver :  </h4>""", r""" 
     	extracts the desired message signals from the received signals at the channel output.
      """);
  static TeXViewWidget hundredthirtythree =
      _teXViewWidget(r"""<h4> Attenuation : </h4>""", r""" 
     	The loss of strength of a signal while propagating through a medium
      """);
  static TeXViewWidget hundredthirtyfour =
      _teXViewWidget(r"""<h4>Amplification:  </h4>""", r""" 
     The process of increasing the amplitude of a signal using an electronic circuit called the amplifier.	
      """);
  static TeXViewWidget hundredthirtyfive =
      _teXViewWidget(r"""<h4> Range : </h4>""", r""" 
     	the largest distance between a source and a destination up to which the signal is received with sufficient strength.
      """);
  static TeXViewWidget hundredthirtysix =
      _teXViewWidget(r"""<h4> Bandwidth : </h4>""", r""" 
     	the frequency range over which an equipment operates or the portion of the spectrum occupied by the signal.
      """);
  static TeXViewWidget hundredthirtyseven =
      _teXViewWidget(r"""<h4>Modulation:  </h4>""", r""" 
     	the original low frequency information signal cannot be transmitted to long distances. Therefore, at the transmitter, information contained in the low frequency message signal is superimposed on a high frequency wave, which acts as a carrier of the information. There are several types of modulation, abbreviated as AM, FM and PM.
      """);
  static TeXViewWidget hundredthirtyeight =
      _teXViewWidget(r"""<h4> Demodulation :  </h4>""", r""" 
     	The process of retrieval of information from the carrier wave at the receiver . This is the reverse process of modulation.
      """);
  static TeXViewWidget hundredthirtynine =
      _teXViewWidget(r"""<h4>Electromagnetic waves:  </h4>""", r""" 
     1.	Propagation by ground wave, <br>
     2.	Propagation by ionospheric wave ( sky wave ) and  <br>
     3.	Propagation by direct wave ( space wave )<br>
     The type of wave propagation is determined by the carrier frequency of the transmitted signal.	<br>
      """);
  static TeXViewWidget hundredforty =
      _teXViewWidget(r"""<h4>Types of modulation :  </h4>""", r""" 
     Amplitude modulation<br>
     Frequency modulation<br>
     Phase modulation <br>
     Detection is the process of recovering the modulating signal from the modulated carrier wave.<br>	
      """);
  static TeXViewWidget hundredfortyone = _teXViewWidget(
      r"""<h4> Production and Detection of AM wave : </h4>""", r""" 
    1.	Production by application of the message signal and the carrier wave to an non-linear device, followed by a band pass filter.<br>
    2.	Detention is carried out using a rectifier and an envelope detector.  	
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
              TeXExample.hundredtwentysix,
              TeXExample.hundredtwentyseven,
              TeXExample.hundredtwentyeight,
              TeXExample.hundredtwentynine,
              TeXExample.hundredthirty,
              TeXExample.hundredthirtyone,
              TeXExample.hundredthirtytwo,
              TeXExample.hundredthirtythree,
              TeXExample.hundredthirtyfour,
              TeXExample.hundredthirtyfive,
              TeXExample.hundredthirtysix,
              TeXExample.hundredthirtyseven,
              TeXExample.hundredthirtyeight,
              TeXExample.hundredtwentynine,
              TeXExample.hundredthirty,
              TeXExample.hundredthirtyone,
              TeXExample.hundredthirtytwo,
              TeXExample.hundredthirtythree,
              TeXExample.hundredthirtyfour,
              TeXExample.hundredthirtyfive,
              TeXExample.hundredthirtysix,
              TeXExample.hundredthirtyseven,
              TeXExample.hundredthirtyeight,
              TeXExample.hundredthirtynine,
              TeXExample.hundredforty,
              TeXExample.hundredfortyone,
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
                runApp(C());
              },
            ),
          ),
        ],
      ),
    ));
  }
}
