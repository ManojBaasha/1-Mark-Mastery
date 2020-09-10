import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch1-Relations_And_Functions/Maths.dart';

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
              runApp(RF());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch9/one.png'),
            _image('assets/maths/ch9/two.png'),
            _image('assets/maths/ch9/three.png'),
            _image('assets/maths/ch9/four.png'),
            _image('assets/maths/ch9/five.png'),
            _image('assets/maths/ch9/six.png'),
            _image('assets/maths/ch9/seven.png'),
            _image('assets/maths/ch9/eight.png'),
            _image('assets/maths/ch9/nine.png'),
            _image('assets/maths/ch9/ten.png'),
            _image('assets/maths/ch9/eleven.png'),
            _image('assets/maths/ch9/twelve.png'),
            _image('assets/maths/ch9/thirteen.png'),
            _image('assets/maths/ch9/fourteen.png'),
            _image('assets/maths/ch9/fifteen.png'),
            _image('assets/maths/ch9/sixteen.png'),
            _image('assets/maths/ch9/seventeen.png'),
            _image('assets/maths/ch9/eighteen.png'),
            _image('assets/maths/ch9/nineteen.png'),
            _image('assets/maths/ch9/twenty.png'),
            _image('assets/maths/ch9/twentyone.png'),
            _image('assets/maths/ch9/twentytwo.png'),
            _image('assets/maths/ch9/twentythree.png'),
            _image('assets/maths/ch9/twentyfour.png'),
            _image('assets/maths/ch9/twentyfive.png'),
            _image('assets/maths/ch9/twentysix.png'),
            _image('assets/maths/ch9/twentyseven.png'),
            _image('assets/maths/ch9/twentyeight.png'),
            _image('assets/maths/ch9/twentynine.png'),
            _image('assets/maths/ch9/thirty.png'),
            _image('assets/maths/ch9/thirtyone.png'),
            _image('assets/maths/ch9/thirtytwo.png'),
            _image('assets/maths/ch9/thirtythree.png'),
            _image('assets/maths/ch9/thirtyfour.png'),
            _image('assets/maths/ch9/thirtyfive.png'),
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
