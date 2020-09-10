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
            _image('assets/maths/ch2/one.png', 'Ans:a'),
            _image('assets/maths/ch2/two.png', 'Ans:b'),
            _image('assets/maths/ch2/three.png', 'Ans:c'),
            _image('assets/maths/ch2/four.png', 'Ans:a'),
            _image('assets/maths/ch2/five.png', 'Ans:b'),
            _image('assets/maths/ch2/six.png', 'Ans:c'),
            _image('assets/maths/ch2/seven.png', 'Ans:d'),
            _image('assets/maths/ch2/nine.png', 'Ans:a'),
            _image('assets/maths/ch2/ten.png', 'Ans:d'),
            _image('assets/maths/ch2/eleven.png', 'Ans:c'),
            _image('assets/maths/ch2/eighteen.png', 'Ans:c'),
            _image('assets/maths/ch2/nineteen.png', 'Ans:b'),
            _image('assets/maths/ch2/twentyone.png', 'Ans:b'),
            _image('assets/maths/ch2/twentyfive.png', 'Ans:c'),
            _image('assets/maths/ch2/fortyfour.png', 'Ans:c'),
            _image('assets/maths/ch2/fortyfive.png', 'Ans:b'),
            _image('assets/maths/ch2/fortyseven.png', 'Ans:b'),
            _image('assets/maths/ch2/fiftyone.png', 'Ans:c'),
            _image('assets/maths/ch2/fiftytwo.png', 'Ans:a'),
            _image('assets/maths/ch2/fiftythree.jpg', 'Ans:b'),
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
