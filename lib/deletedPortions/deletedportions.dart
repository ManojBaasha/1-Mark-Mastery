import 'package:flutter/material.dart';
import 'package:class_app/main.dart';
import './chemistrydel.dart';
import './mathsdel.dart';
import './physicsdel.dart';

// ignore: camel_case_types
class Deleted_Portions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Deleted Portions"),
        backgroundColor: Colors.black,
      ),
      body: ListView(children: <Widget>[
        ListTile(
          leading: Icon(Icons.timeline),
          title: Text("Chemistry",
              style: new TextStyle(
                fontSize: 30.0,
              )),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            runApp(TeXViewDocumentExamples2());
          },
          subtitle: Text("View the Chemistry Deleted Portions"),
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text("Maths",
              style: new TextStyle(
                fontSize: 30.0,
              )),
          trailing: Icon(Icons.keyboard_arrow_right),
          subtitle: Text("View the Maths Deleted Portions"),
          onTap: () {
            runApp(TeXViewDocumentExamples());
          },
        ),
        ListTile(
            leading: Icon(Icons.all_inclusive),
            title: Text('Physics', style: new TextStyle(fontSize: 30.0)),
            subtitle: Text("View the Physics Deleted Portions"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              runApp(TeXViewDocumentExamples3());
            }),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text("Back",
              style: new TextStyle(
                fontSize: 30.0,
              )),
          onTap: () {
            runApp(FrontPage());
          },
        )
      ]),
    ));
  }
}
