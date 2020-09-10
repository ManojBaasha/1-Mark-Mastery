import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch10-Vector Algebra/Maths.dart';

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
              runApp(VA());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch10/one.png', 'Ans:c'),
            _image('assets/maths/ch10/two.png', 'Ans:d'),
            _image('assets/maths/ch10/three.png', 'Ans:c'),
            _image('assets/maths/ch10/four.png', 'Ans:b'),
            _image('assets/maths/ch10/five.png', 'Ans:b'),
            _image('assets/maths/ch10/six.png', 'Ans:a'),
            _image('assets/maths/ch10/seven.png', 'Ans:c'),
            _image('assets/maths/ch10/eight.png', 'Ans:d'),
            _image('assets/maths/ch10/nine.png', 'Ans:a'),
            _image('assets/maths/ch10/ten.png', 'Ans:c'),
            _image('assets/maths/ch10/eleven.png', 'Ans:b'),
            _image('assets/maths/ch10/twelve.png', 'Ans:d'),
            _image('assets/maths/ch10/thirteen.png', 'Ans:c'),
            _image('assets/maths/ch10/fifteen.png', 'Ans:a'),
            _image('assets/maths/ch10/sixteen.png', 'Ans:c'),
            _image('assets/maths/ch10/seventeen.png', 'Ans:b'),
            _image('assets/maths/ch10/eighteen.png', 'Ans:c'),
            _image('assets/maths/ch10/nineteen.png', 'Ans:c'),
            _image('assets/maths/ch10/twenty.png', 'Ans:a'),
            _image('assets/maths/ch10/twentyone.png', 'Ans:b'),
            _image('assets/maths/ch10/twentythree.png', 'Ans:b'),
            _image('assets/maths/ch10/twentyfour.png', 'Ans:c'),
            _image('assets/maths/ch10/twentyfive.png', 'Ans:c'),
            _image('assets/maths/ch10/twentysix.png', 'Ans:d'),
            _image('assets/maths/ch10/twentyseven.png', 'Ans:c'),
            _image('assets/maths/ch10/twentyeight.png', 'Ans:b'),
            _image('assets/maths/ch10/twentynine.png', 'Ans:c'),
            _image('assets/maths/ch10/thirty.png', 'Ans:a'),
            _image('assets/maths/ch10/thirtyone.png', 'Ans:d'),
            _image('assets/maths/ch10/thirtytwo.png', 'Ans:b'),
            _image('assets/maths/ch10/thirtythree.png', 'Ans:a'),
            _image('assets/maths/ch10/thirtyfour.png', 'Ans:c'),
            _image('assets/maths/ch10/thirtyfive.png', 'Ans:a'),
            _image('assets/maths/ch10/thirtysix.png', 'Ans:b'),
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
