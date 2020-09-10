import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch4-Determinants/Maths.dart';

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
              runApp(D());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch4/one.png'),
            _image('assets/maths/ch4/two.png'),
            _image('assets/maths/ch4/three.png'),
            _image('assets/maths/ch4/four.png'),
            _image('assets/maths/ch4/five.png'),
            _image('assets/maths/ch4/six.png'),
            _image('assets/maths/ch4/eight.png'),
            _image('assets/maths/ch4/nine.png'),
            _image('assets/maths/ch4/ten.png'),
            _image('assets/maths/ch4/eleven.png'),
            _image('assets/maths/ch4/twelve.png'),
            _image('assets/maths/ch4/thirteen.png'),
            _image('assets/maths/ch4/fourteen.png'),
            _image('assets/maths/ch4/sixteen.png'),
            _image('assets/maths/ch4/seventeen.png'),
            _image('assets/maths/ch4/eighteen.png'),
            _image('assets/maths/ch4/nineteen.png'),
            _image('assets/maths/ch4/twenty.png'),
            _image('assets/maths/ch4/twentyone.png'),
            _image('assets/maths/ch4/twentythree.png'),
            _image('assets/maths/ch4/twentyfour.png'),
            _image('assets/maths/ch4/twentyfive.png'),
            _image('assets/maths/ch4/twentysix.png'),
            _image('assets/maths/ch4/twentyseven.png'),
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
