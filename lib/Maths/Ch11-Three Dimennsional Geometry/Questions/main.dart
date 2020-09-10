import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch11-Three Dimennsional Geometry/Maths.dart';

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
              runApp(DG());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch11/one.png'),
            _image('assets/maths/ch11/two.png'),
            _image('assets/maths/ch11/three.png'),
            _image('assets/maths/ch11/four.png'),
            _image('assets/maths/ch11/five.png'),
            _image('assets/maths/ch11/six.png'),
            _image('assets/maths/ch11/seven.png'),
            _image('assets/maths/ch11/eight.png'),
            _image('assets/maths/ch11/nine.png'),
            _image('assets/maths/ch11/ten.png'),
            _image('assets/maths/ch11/eleven.png'),
            _image('assets/maths/ch11/thirteen.png'),
            _image('assets/maths/ch11/fourteen.png'),
            _image('assets/maths/ch11/sixteen.png'),
            _image('assets/maths/ch11/seventeen.png'),
            _image('assets/maths/ch11/eighteen.png'),
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
