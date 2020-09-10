import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch1-Relations_And_Functions/Maths.dart';

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
              runApp(RF());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch13/one.png', 'Ans:b'),
            _image('assets/maths/ch13/two.png', 'Ans:c'),
            _image('assets/maths/ch13/three.png', 'Ans:b'),
            _image('assets/maths/ch13/four.png', 'Ans:d'),
            _image('assets/maths/ch13/five.png', 'Ans:d'),
            _image('assets/maths/ch13/seven.png', 'Ans:b'),
            _image('assets/maths/ch13/eight.png', 'Ans:a'),
            _image('assets/maths/ch13/nine.png', 'Ans:b'),
            _image('assets/maths/ch13/ten.png', 'Ans:a'),
            _image('assets/maths/ch13/eleven.png', 'Ans:b'),
            _image('assets/maths/ch13/twelve.png', 'Ans:d'),
            _image('assets/maths/ch13/thirteen.png', 'Ans:b'),
            _image('assets/maths/ch13/fifteen.png', 'Ans:a'),
            _image('assets/maths/ch13/sixteen.png', 'Ans:b'),
            _image('assets/maths/ch13/seventeen.png', 'Ans:d'),
            _image('assets/maths/ch13/eighteen.png', 'Ans:b'),
            _image('assets/maths/ch13/nineteen.png', 'Ans:a'),
            _image('assets/maths/ch13/twenty.png', 'Ans:a'),
            _image('assets/maths/ch13/twentyone.png', 'Ans:d'),
            _image('assets/maths/ch13/twentytwo.png', 'Ans:b'),
            _image('assets/maths/ch13/twentythree.png', 'Ans:a'),
            _image('assets/maths/ch13/twentyfour.png', 'Ans:a'),
            _image('assets/maths/ch13/twentyfive.png', 'Ans:c'),
            _image('assets/maths/ch13/twentysix.png', 'Ans:c'),
            _image('assets/maths/ch13/twentyseven.png', 'Ans:c'),
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
