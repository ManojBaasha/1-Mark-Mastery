import 'package:flutter/material.dart';
import 'Chemistry_Questions/main.dart';

import 'package:class_app/Chemistry/chapters.dart';

// ignore: camel_case_types
class SS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        runApp(Chemistry());
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Chemistry"),
            backgroundColor: Colors.indigoAccent,
          ),
          body: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.question_answer),
                title:
                    Text("Question Bank", style: new TextStyle(fontSize: 30.0)),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  runApp(SS2());
                },
              ),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text("Back",
                    style: new TextStyle(
                      fontSize: 30.0,
                    )),
                onTap: () {
                  runApp(Chemistry());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
