import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch5-Continuity And Differentiablility/Maths.dart';

class TeXExample {}

class TeXViewDocumentExamples2 extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;

  TeXViewDocumentExamples2(
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
              runApp(CD());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch5/one.png', 'Ans:c'),
            _image('assets/maths/ch5/two.png', 'Ans:c'),
            _image('assets/maths/ch5/three.png', 'Ans:b'),
            _image('assets/maths/ch5/four.png', 'Ans:b'),
            _image('assets/maths/ch5/five.png', 'Ans:c'),
            _image('assets/maths/ch5/six.png', 'Ans:c'),
            _image('assets/maths/ch5/seven.png', 'Ans:b'),
            _image('assets/maths/ch5/eight.png', 'Ans:c'),
            _image('assets/maths/ch5/nine.png', 'Ans:c'),
            _image('assets/maths/ch5/ten.png', 'Ans:b'),
            _image('assets/maths/ch5/eleven.png', 'Ans:a'),
            _image('assets/maths/ch5/twelve.png', 'Ans:b'),
            _image('assets/maths/ch5/thirteen.png', 'Ans:a'),
            _image('assets/maths/ch5/fifteen.png', 'Ans:b'),
            _image('assets/maths/ch5/sixteen.png', 'Ans:b'),
            _image('assets/maths/ch5/seventeen.png', 'Ans:b'),
            _image('assets/maths/ch5/eighteen.png', 'Ans:a'),
            _image('assets/maths/ch5/nineteen.png', 'Ans:c'),
            _image('assets/maths/ch5/twenty.png', 'Ans:a'),
            _image('assets/maths/ch5/twentytwo.png', 'Ans:b'),
            _image('assets/maths/ch5/twentythree.png', 'Ans:b'),
            _image('assets/maths/ch5/twentyfour.png', 'Ans:b'),
            _image('assets/maths/ch5/twentyfive.png', 'Ans:c'),
            _image('assets/maths/ch5/twentysix.png', 'Ans:a'),
            _image('assets/maths/ch5/twentynine.png', 'Ans:d'),
            _image('assets/maths/ch5/thirtytwo.png', 'Ans:d'),
            _image('assets/maths/ch5/thirtyfour.png', 'Ans:a'),
            _image('assets/maths/ch5/thirtyfive.png', 'Ans:c'),
            _image('assets/maths/ch5/thirtyseven.png', 'Ans:a'),
            _image('assets/maths/ch5/fortythree.png', 'Ans:a'),
            _image('assets/maths/ch5/fortyeight.png', 'Ans:c'),
            _image('assets/maths/ch5/fortynine.png', 'Ans:a'),
            _image('assets/maths/ch5/fifty.png', 'Ans:c'),
            _image('assets/maths/ch5/fiftyone.png', 'Ans:b'),
            _image('assets/maths/ch5/fiftysix.png', 'Ans:a'),
            _image('assets/maths/ch5/sixtyfour.png', 'Ans:b'),
            _image('assets/maths/ch5/sixtynine.png', 'Ans:d'),
            _image('assets/maths/ch5/seventy.png', 'Ans:c'),
            _image('assets/maths/ch5/seventythree.png', 'Ans:b'),
            _image('assets/maths/ch5/seventyeight.png', 'Ans:a'),
            _image('assets/maths/ch5/eightyone.png', 'Ans:a'),
            _image('assets/maths/ch5/eightythree.png', 'Ans:a'),
          ],
        ),
      ),
    );
  }
}

Widget _image(String ImgPath, String answer) {
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
      Container(
        alignment: Alignment.centerLeft,
        child: Text(answer,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16.0,
            )),
      )
    ],
  );
}
