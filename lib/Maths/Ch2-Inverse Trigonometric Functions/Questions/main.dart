import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:class_app/Maths/Ch2-Inverse Trigonometric Functions/Maths.dart';

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
              runApp(ITF());
            },
          ),
          title: Text("Differential Equations"),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: <Widget>[
            _image('assets/maths/ch2/one.png'),
            _image('assets/maths/ch2/two.png'),
            _image('assets/maths/ch2/three.png'),
            _image('assets/maths/ch2/four.png'),
            _image('assets/maths/ch2/five.png'),
            _image('assets/maths/ch2/six.png'),
            _image('assets/maths/ch2/seven.png'),
            _image('assets/maths/ch2/nine.png'),
            _image('assets/maths/ch2/ten.png'),
            _image('assets/maths/ch2/eleven.png'),
            _image('assets/maths/ch2/eighteen.png'),
            _image('assets/maths/ch2/nineteen.png'),
            _image('assets/maths/ch2/twentyone.png'),
            _image('assets/maths/ch2/twentyfive.png'),
            _image('assets/maths/ch2/fortyfour.png'),
            _image('assets/maths/ch2/fortyfive.png'),
            _image('assets/maths/ch2/fortyseven.png'),
            _image('assets/maths/ch2/fiftyone.png'),
            _image('assets/maths/ch2/fiftytwo.png'),
            _image('assets/maths/ch2/fiftythree.jpg'),
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
