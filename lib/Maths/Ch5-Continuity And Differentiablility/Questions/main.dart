import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch5-Continuity And Differentiablility/Maths.dart';

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
              runApp(CD());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch5/one.png'),
            _image('assets/maths/ch5/two.png'),
            _image('assets/maths/ch5/three.png'),
            _image('assets/maths/ch5/four.png'),
            _image('assets/maths/ch5/five.png'),
            _image('assets/maths/ch5/six.png'),
            _image('assets/maths/ch5/seven.png'),
            _image('assets/maths/ch5/eight.png'),
            _image('assets/maths/ch5/nine.png'),
            _image('assets/maths/ch5/ten.png'),
            _image('assets/maths/ch5/eleven.png'),
            _image('assets/maths/ch5/twelve.png'),
            _image('assets/maths/ch5/thirteen.png'),
            _image('assets/maths/ch5/fifteen.png'),
            _image('assets/maths/ch5/sixteen.png'),
            _image('assets/maths/ch5/seventeen.png'),
            _image('assets/maths/ch5/eighteen.png'),
            _image('assets/maths/ch5/nineteen.png'),
            _image('assets/maths/ch5/twenty.png'),
            _image('assets/maths/ch5/twentytwo.png'),
            _image('assets/maths/ch5/twentythree.png'),
            _image('assets/maths/ch5/twentyfour.png'),
            _image('assets/maths/ch5/twentyfive.png'),
            _image('assets/maths/ch5/twentysix.png'),
            _image('assets/maths/ch5/twentynine.png'),
            _image('assets/maths/ch5/thirtytwo.png'),
            _image('assets/maths/ch5/thirtyfour.png'),
            _image('assets/maths/ch5/thirtyfive.png'),
            _image('assets/maths/ch5/thirtyseven.png'),
            _image('assets/maths/ch5/fortythree.png'),
            _image('assets/maths/ch5/fortyeight.png'),
            _image('assets/maths/ch5/fortynine.png'),
            _image('assets/maths/ch5/fifty.png'),
            _image('assets/maths/ch5/fiftyone.png'),
            _image('assets/maths/ch5/fiftysix.png'),
            _image('assets/maths/ch5/sixtyfour.png'),
            _image('assets/maths/ch5/sixtynine.png'),
            _image('assets/maths/ch5/seventy.png'),
            _image('assets/maths/ch5/seventythree.png'),
            _image('assets/maths/ch5/seventyeight.png'),
            _image('assets/maths/ch5/eightyone.png'),
            _image('assets/maths/ch5/eightythree.png'),
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
