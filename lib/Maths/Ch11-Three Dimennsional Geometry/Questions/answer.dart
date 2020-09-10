import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch11-Three Dimennsional Geometry/Maths.dart';

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
              runApp(DG());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch112/one.png'),
            _image('assets/maths/ch112/two.png'),
            _image('assets/maths/ch112/three.png'),
            _image('assets/maths/ch112/four.png'),
            _image('assets/maths/ch112/five.png'),
            _image('assets/maths/ch112/six.png'),
            _image('assets/maths/ch112/seven.png'),
            _image('assets/maths/ch112/eight.png'),
            _image('assets/maths/ch112/nine.png'),
            _image('assets/maths/ch112/ten.png'),
            _image('assets/maths/ch112/eleven.png'),
            _image('assets/maths/ch112/twelve.png'),
            _image('assets/maths/ch112/fourteen.png'),
            _image('assets/maths/ch112/fifteen.png'),
            _image('assets/maths/ch112/sixteen.png'),
            _image('assets/maths/ch112/seventeen.png'),
            _image('assets/maths/ch112/eighteen.png'),
            _image('assets/maths/ch112/nineteen.png'),
            _image('assets/maths/ch112/twenty.png'),
            _image('assets/maths/ch112/twentyone.png'),
            _image('assets/maths/ch112/twentytwo.png'),
            _image('assets/maths/ch112/twentythree.png'),
            _image('assets/maths/ch112/twentyfour.png'),
            _image('assets/maths/ch112/twentyfive.png'),
            _image('assets/maths/ch112/twentysix.png'),
            _image('assets/maths/ch112/twentyseven.png'),
            _image('assets/maths/ch112/twentyeight.png'),
            _image('assets/maths/ch112/twentynine.png'),
            _image('assets/maths/ch112/thirty.png'),
            _image('assets/maths/ch112/thirtyone.png'),
            _image('assets/maths/ch112/thirtytwo.png'),
            _image('assets/maths/ch112/thirtythree.png'),
            _image('assets/maths/ch112/thirtyfour.png'),
            _image('assets/maths/ch112/thirtyfive.png'),
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
