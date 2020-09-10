import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/chapters.dart';

class TeXExample {}

class TeXViewDocumentExamples extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;

  TeXViewDocumentExamples(
      {this.renderingEngine = const TeXViewRenderingEngine.mathjax()});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              runApp(Maths());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/Assertion&Reasoning/heading.png'),
            _image('assets/maths/Assertion&Reasoning/one.png'),
            _image('assets/maths/Assertion&Reasoning/two.png'),
            _image('assets/maths/Assertion&Reasoning/three.png'),
            _image('assets/maths/Assertion&Reasoning/four.png'),
            _image('assets/maths/Assertion&Reasoning/five.png'),
            _image('assets/maths/Assertion&Reasoning/six.png'),
            _image('assets/maths/Assertion&Reasoning/seven.png'),
            _image('assets/maths/Assertion&Reasoning/eight.png'),
            _image('assets/maths/Assertion&Reasoning/nine.png'),
            _image('assets/maths/Assertion&Reasoning/ten.png'),
            _image('assets/maths/Assertion&Reasoning/eleven.png'),
            _image('assets/maths/Assertion&Reasoning/twelve.png'),
            _image('assets/maths/Assertion&Reasoning/fourteen.png'),
            _image('assets/maths/Assertion&Reasoning/fifteen.png'),
            _image('assets/maths/Assertion&Reasoning/sixteen.png'),
            _image('assets/maths/Assertion&Reasoning/seventeen.png'),
            _image('assets/maths/Assertion&Reasoning/eighteen.png'),
            _image('assets/maths/Assertion&Reasoning/twenty.png'),
            _image('assets/maths/Assertion&Reasoning/twentyone.png'),
            _image('assets/maths/Assertion&Reasoning/twentytwo.png'),
            _image('assets/maths/Assertion&Reasoning/twentythree.png'),
            _image('assets/maths/Assertion&Reasoning/twentyfour.png'),
            _image('assets/maths/Assertion&Reasoning/twentyfive.png'),
            _image('assets/maths/Assertion&Reasoning/twentyseven.png'),
            _image('assets/maths/Assertion&Reasoning/twentyeight.png'),
            _image('assets/maths/Assertion&Reasoning/twentynine.png'),
            _image('assets/maths/Assertion&Reasoning/thirty.png'),
            _image('assets/maths/Assertion&Reasoning/thirtyone.png'),
            _image('assets/maths/Assertion&Reasoning/thirtytwo.png'),
            _image('assets/maths/Assertion&Reasoning/thirtyfour.png'),
            _image('assets/maths/Assertion&Reasoning/thirtyfive.png'),
            _image('assets/maths/Assertion&Reasoning/thirtysix.png'),
            _image('assets/maths/Assertion&Reasoning/thirtyseven.png'),
            _image('assets/maths/Assertion&Reasoning/thirtyeight.png'),
            _image('assets/maths/Assertion&Reasoning/thirtynine.png'),
            _image('assets/maths/Assertion&Reasoning/forty.png'),
            _image('assets/maths/Assertion&Reasoning/fortythree.png'),
            _image('assets/maths/Assertion&Reasoning/fortyfour.png'),
            _image('assets/maths/Assertion&Reasoning/fortyfive.png'),
            _image('assets/maths/Assertion&Reasoning/fortysix.png'),
            _image('assets/maths/Assertion&Reasoning/fortyseven.png'),
            _image('assets/maths/Assertion&Reasoning/fortyeight.png'),
            _image('assets/maths/Assertion&Reasoning/fortynine.png'),
            _image('assets/maths/Assertion&Reasoning/fifty.png'),
            _image('assets/maths/Assertion&Reasoning/fiftyone.png'),
            _image('assets/maths/Assertion&Reasoning/fiftytwo.png'),
            _image('assets/maths/Assertion&Reasoning/fiftythree.png'),
            _image('assets/maths/Assertion&Reasoning/fiftyfour.png'),
            _image('assets/maths/Assertion&Reasoning/fiftysix.png'),
            _image('assets/maths/Assertion&Reasoning/fiftyseven.png'),
            _image('assets/maths/Assertion&Reasoning/fiftyeight.png'),
            _image('assets/maths/Assertion&Reasoning/fiftynine.png'),
            _image('assets/maths/Assertion&Reasoning/sixty.png'),
            _image('assets/maths/Assertion&Reasoning/sixtyone.png'),
            _image('assets/maths/Assertion&Reasoning/sixtythree.png'),
            _image('assets/maths/Assertion&Reasoning/sixtyfour.png'),
            _image('assets/maths/Assertion&Reasoning/sixtyfive.png'),
            _image('assets/maths/Assertion&Reasoning/sixtysix.png'),
            _image('assets/maths/Assertion&Reasoning/sixtyeight.png'),
            _image('assets/maths/Assertion&Reasoning/sixtynine.png'),
            _image('assets/maths/Assertion&Reasoning/seventy.png'),
            _image('assets/maths/Assertion&Reasoning/seventyone.png'),
            _image('assets/maths/Assertion&Reasoning/seventytwo.png'),
            _image('assets/maths/Assertion&Reasoning/seventythree.png'),
            _image('assets/maths/Assertion&Reasoning/seventyfour.png'),
            _image('assets/maths/Assertion&Reasoning/seventyfive.png'),
            _image('assets/maths/Assertion&Reasoning/seventysix.png'),
            _image('assets/maths/Assertion&Reasoning/seventyseven.png'),
            _image('assets/maths/Assertion&Reasoning/seventyeight.png'),
            _image('assets/maths/Assertion&Reasoning/seventynine.png'),
            _image('assets/maths/Assertion&Reasoning/eighty.png'),
            _image('assets/maths/Assertion&Reasoning/eightytwo.png'),
            _image('assets/maths/Assertion&Reasoning/eightythree.png'),
            _image('assets/maths/Assertion&Reasoning/eightyfour.png'),
            _image('assets/maths/Assertion&Reasoning/eightyfive.png'),
            _image('assets/maths/Assertion&Reasoning/eightysix.png'),
            _image('assets/maths/Assertion&Reasoning/eightyseven.png'),
          ],
        ),
      ),
    );
  }
}

Widget _image(String ImgPath) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          ImgPath,
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}
