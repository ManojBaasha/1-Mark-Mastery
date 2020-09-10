import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch1-Relations_And_Functions/Maths.dart';

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
              runApp(RF());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch1/one.png'),
            _image('assets/maths/ch1/two.png'),
            _image('assets/maths/ch1/three.png'),
            _image('assets/maths/ch1/four.png'),
            _image('assets/maths/ch1/six.png'),
            _image('assets/maths/ch1/seven.png'),
            _image('assets/maths/ch1/eight.png'),
            _image('assets/maths/ch1/nine.png'),
            _image('assets/maths/ch1/ten.png'),
            _image('assets/maths/ch1/eleven.png'),
            _image('assets/maths/ch1/twelve.png'),
            _image('assets/maths/ch1/thirteen.png'),
            _image('assets/maths/ch1/fourteen.png'),
            _image('assets/maths/ch1/sixteen.png'),
            _image('assets/maths/ch1/seventeen.png'),
            _image('assets/maths/ch1/eighteen.png'),
            _image('assets/maths/ch1/twenty.png'),
            _image('assets/maths/ch1/twentyfive.png'),
            _image('assets/maths/ch1/twentyseven.png'),
            _image('assets/maths/ch1/twentyeight.png'),
            _image('assets/maths/ch1/twentynine.png'),
            _image('assets/maths/ch1/thirty.png'),
            _image('assets/maths/ch1/thirtyone.png'),
            _image('assets/maths/ch1/thirtyeight.png'),
            _image('assets/maths/ch1/fortythree.png'),
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
