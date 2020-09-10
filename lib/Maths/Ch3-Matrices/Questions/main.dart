import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch3-Matrices/Maths.dart';

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
              runApp(M());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch3/one.png'),
            _image('assets/maths/ch3/two.png'),
            _image('assets/maths/ch3/three.png'),
            _image('assets/maths/ch3/four.png'),
            _image('assets/maths/ch3/six.png'),
            _image('assets/maths/ch3/seven.png'),
            _image('assets/maths/ch3/nine.png'),
            _image('assets/maths/ch3/ten.png'),
            _image('assets/maths/ch3/eleven.png'),
            _image('assets/maths/ch3/twelve.png'),
            _image('assets/maths/ch3/fifteen.png'),
            _image('assets/maths/ch3/sixteen.png'),
            _image('assets/maths/ch3/eighteen.png'),
            _image('assets/maths/ch3/nineteen.png'),
            _image('assets/maths/ch3/twenty.png'),
            _image('assets/maths/ch3/twentyone.png'),
            _image('assets/maths/ch3/twentythree.png'),
            _image('assets/maths/ch3/twentynine.png'),
            _image('assets/maths/ch3/thirtythree.png'),
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
