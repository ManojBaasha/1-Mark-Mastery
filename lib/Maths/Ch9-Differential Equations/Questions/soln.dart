import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch9-Differential Equations/Maths.dart';

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
              runApp(DE());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch9/one.png', 'Ans:c'),
            _image('assets/maths/ch9/two.png', 'Ans:b'),
            _image('assets/maths/ch9/three.png', 'Ans:a'),
            _image('assets/maths/ch9/four.png', 'Ans:b'),
            _image('assets/maths/ch9/five.png', 'Ans:a'),
            _image('assets/maths/ch9/six.png', 'Ans:b'),
            _image('assets/maths/ch9/seven.png', 'Ans:a'),
            _image('assets/maths/ch9/eight.png', 'Ans:b'),
            _image('assets/maths/ch9/nine.png', 'Ans:c'),
            _image('assets/maths/ch9/ten.png', 'Ans:a'),
            _image('assets/maths/ch9/eleven.png', 'Ans:b'),
            _image('assets/maths/ch9/twelve.png', 'Ans:b'),
            _image('assets/maths/ch9/thirteen.png', 'Ans:c'),
            _image('assets/maths/ch9/fourteen.png', 'Ans:b'),
            _image('assets/maths/ch9/fifteen.png', 'Ans:b'),
            _image('assets/maths/ch9/sixteen.png', 'Ans:b'),
            _image('assets/maths/ch9/seventeen.png', 'Ans:a'),
            _image('assets/maths/ch9/eighteen.png', 'Ans:b'),
            _image('assets/maths/ch9/nineteen.png', 'Ans:c'),
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
