import 'package:flutter/material.dart';
import 'Physics_Definitions/main.dart';
import 'Physics_Reasoning/main.dart';
import 'package:class_app/Physics/chapters.dart';

// ignore: camel_case_types
class EI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Physics"),
          backgroundColor: Colors.indigoAccent,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Definitions', style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(TeXViewDocumentExamples());
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title:
                  Text("Question Bank", style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(EI2());
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
