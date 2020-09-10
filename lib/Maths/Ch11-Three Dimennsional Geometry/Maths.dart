import 'package:flutter/material.dart';
import 'package:class_app/Maths/chapters.dart';
import 'Questions/main.dart';
import 'Questions/answer.dart';
import './Questions/answersoln.dart';
import './Questions/mainsoln.dart';

// ignore: camel_case_types
class DG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Maths"),
          backgroundColor: Colors.indigoAccent,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add_box),
              title:
                  Text('Question Bank1', style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(TeXViewDocumentExamples());
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Solutions 1', style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(TeXViewDocumentExamples3());
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Questions Bank 2',
                  style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(TeXViewDocumentExamples2());
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Solutions 2', style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(TeXViewDocumentExamples4());
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Back",
                  style: new TextStyle(
                    fontSize: 30.0,
                  )),
              onTap: () {
                runApp(Maths());
              },
            ),
          ],
        ),
      ),
    );
  }
}
