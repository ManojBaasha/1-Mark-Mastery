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
            _image('assets/maths/ch1/one.png', 'Ans:b'),
            _image('assets/maths/ch1/two.png', 'Ans:c'),
            _image('assets/maths/ch1/three.png', 'Ans:a'),
            _image('assets/maths/ch1/four.png', 'Ans:b'),
            _image('assets/maths/ch1/six.png', 'Ans:d'),
            _image('assets/maths/ch1/seven.png', 'Ans:b'),
            _image('assets/maths/ch1/eight.png', 'Ans:c'),
            _image('assets/maths/ch1/nine.png', 'Ans:c'),
            _image('assets/maths/ch1/ten.png', 'Ans:a'),
            _image('assets/maths/ch1/eleven.png', 'Ans:a'),
            _image('assets/maths/ch1/twelve.png', 'Ans:d'),
            _image('assets/maths/ch1/thirteen.png', 'Ans:a'),
            _image('assets/maths/ch1/fourteen.png', 'Ans:d'),
            _image('assets/maths/ch1/sixteen.png', 'Ans:b'),
            _image('assets/maths/ch1/seventeen.png', 'Ans:b'),
            _image('assets/maths/ch1/eighteen.png', 'Ans:d'),
            _image('assets/maths/ch1/twenty.png', 'Ans:d'),
            _image('assets/maths/ch1/twentyfive.png', 'Ans:d'),
            _image('assets/maths/ch1/twentyseven.png', 'Ans:c'),
            _image('assets/maths/ch1/twentyeight.png', 'Ans:a'),
            _image('assets/maths/ch1/twentynine.png', 'Ans:b'),
            _image('assets/maths/ch1/thirty.png', 'Ans:a'),
            _image('assets/maths/ch1/thirtyone.png', 'Ans:c'),
            _image('assets/maths/ch1/thirtyeight.png', 'Ans:b'),
            _image('assets/maths/ch1/fortythree.png', 'Ans:c'),
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
