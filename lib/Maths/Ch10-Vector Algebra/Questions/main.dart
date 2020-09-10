import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch10-Vector Algebra/Maths.dart';

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
              runApp(VA());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch10/one.png'),
            _image('assets/maths/ch10/two.png'),
            _image('assets/maths/ch10/three.png'),
            _image('assets/maths/ch10/four.png'),
            _image('assets/maths/ch10/five.png'),
            _image('assets/maths/ch10/six.png'),
            _image('assets/maths/ch10/seven.png'),
            _image('assets/maths/ch10/eight.png'),
            _image('assets/maths/ch10/nine.png'),
            _image('assets/maths/ch10/ten.png'),
            _image('assets/maths/ch10/eleven.png'),
            _image('assets/maths/ch10/twelve.png'),
            _image('assets/maths/ch10/thirteen.png'),
            _image('assets/maths/ch10/fifteen.png'),
            _image('assets/maths/ch10/sixteen.png'),
            _image('assets/maths/ch10/seventeen.png'),
            _image('assets/maths/ch10/eighteen.png'),
            _image('assets/maths/ch10/nineteen.png'),
            _image('assets/maths/ch10/twenty.png'),
            _image('assets/maths/ch10/twentyone.png'),
            _image('assets/maths/ch10/twentythree.png'),
            _image('assets/maths/ch10/twentyfour.png'),
            _image('assets/maths/ch10/twentyfive.png'),
            _image('assets/maths/ch10/twentysix.png'),
            _image('assets/maths/ch10/twentyseven.png'),
            _image('assets/maths/ch10/twentyeight.png'),
            _image('assets/maths/ch10/twentynine.png'),
            _image('assets/maths/ch10/thirty.png'),
            _image('assets/maths/ch10/thirtyone.png'),
            _image('assets/maths/ch10/thirtytwo.png'),
            _image('assets/maths/ch10/thirtythree.png'),
            _image('assets/maths/ch10/thirtyfour.png'),
            _image('assets/maths/ch10/thirtyfive.png'),
            _image('assets/maths/ch10/thirtysix.png'),
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
