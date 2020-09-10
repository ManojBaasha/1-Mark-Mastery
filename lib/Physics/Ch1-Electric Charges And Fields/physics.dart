import 'package:flutter/material.dart';
import 'Physics_Definitions/main.dart';
import 'Physics_Reasoning/main.dart';
import 'package:class_app/Physics/chapters.dart';

// ignore: camel_case_types
class EC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Physics"),
          backgroundColor: Colors.indigo[900],
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.all_inclusive),
              title:
                  Text('Question Bank 1', style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle:
                  Text('Click On The Answer To Move To The Next Question'),
              onTap: () {
                runApp(TeXViewDocumentExamples());
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title:
                  Text("Question Bank 2", style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle:
                  Text('Click On The Answer To Move To The Next Question'),
              onTap: () {
                runApp(EC2());
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Back",
                  style: new TextStyle(
                    fontSize: 30.0,
                  )),
              onTap: () {
                runApp(Physics());
              },
            ),
          ],
        ),
      ),
    );
  }
}
