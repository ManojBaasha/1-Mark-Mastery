import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch3-Matrices/Maths.dart';

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
              runApp(M());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch3/one.png', 'Ans:b'),
            _image('assets/maths/ch3/two.png', 'Ans:c'),
            _image('assets/maths/ch3/three.png', 'Ans:a'),
            _image('assets/maths/ch3/four.png', 'Ans:d'),
            _image('assets/maths/ch3/six.png', 'Ans:d'),
            _image('assets/maths/ch3/seven.png', 'Ans:b'),
            _image('assets/maths/ch3/nine.png', 'Ans:c'),
            _image('assets/maths/ch3/ten.png', 'Ans:a'),
            _image('assets/maths/ch3/eleven.png', 'Ans:a'),
            _image('assets/maths/ch3/twelve.png', 'Ans:d'),
            _image('assets/maths/ch3/fifteen.png', 'Ans:d'),
            _image('assets/maths/ch3/sixteen.png', 'Ans:b'),
            _image('assets/maths/ch3/eighteen.png', 'Ans:d'),
            _image('assets/maths/ch3/nineteen.png', 'Ans:a'),
            _image('assets/maths/ch3/twenty.png', 'Ans:d'),
            _image('assets/maths/ch3/twentyone.png', 'Ans:b'),
            _image('assets/maths/ch3/twentythree.png', 'Ans:c'),
            _image('assets/maths/ch3/twentynine.png', 'Ans:b'),
            _image('assets/maths/ch3/thirtythree.png', 'Ans:c'),
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
