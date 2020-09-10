import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch4-Determinants/Maths.dart';

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
              runApp(D());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch4/one.png', 'Ans:b'),
            _image('assets/maths/ch4/two.png', 'Ans:c'),
            _image('assets/maths/ch4/three.png', 'Ans:b'),
            _image('assets/maths/ch4/four.png', 'Ans:c'),
            _image('assets/maths/ch4/five.png', 'Ans:b'),
            _image('assets/maths/ch4/six.png', 'Ans:c'),
            _image('assets/maths/ch4/eight.png', 'Ans:d'),
            _image('assets/maths/ch4/nine.png', 'Ans:c'),
            _image('assets/maths/ch4/ten.png', 'Ans:a'),
            _image('assets/maths/ch4/eleven.png', 'Ans:b'),
            _image('assets/maths/ch4/twelve.png', 'Ans:b'),
            _image('assets/maths/ch4/thirteen.png', 'Ans:c'),
            _image('assets/maths/ch4/fourteen.png', 'Ans:b'),
            _image('assets/maths/ch4/sixteen.png', 'Ans:c'),
            _image('assets/maths/ch4/seventeen.png', 'Ans:a'),
            _image('assets/maths/ch4/eighteen.png', 'Ans:a'),
            _image('assets/maths/ch4/nineteen.png', 'Ans:c'),
            _image('assets/maths/ch4/twenty.png', 'Ans:a'),
            _image('assets/maths/ch4/twentyone.png', 'Ans:c'),
            _image('assets/maths/ch4/twentythree.png', 'Ans:a'),
            _image('assets/maths/ch4/twentyfour.png', 'Ans:b'),
            _image('assets/maths/ch4/twentyfive.png', 'Ans:b'),
            _image('assets/maths/ch4/twentysix.png', 'Ans:b'),
            _image('assets/maths/ch4/twentyseven.png', 'Ans:c'),
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
