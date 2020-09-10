import 'package:flutter/material.dart';
import 'package:class_app/Maths/chapters.dart';
import 'Questions/main.dart';
import './Questions/soln.dart';

// ignore: camel_case_types
class DE extends StatelessWidget {
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
              title: Text('Definitions', style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(TeXViewDocumentExamples());
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title:
                  Text('Question Bank', style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(TeXViewDocumentExamples2());
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
