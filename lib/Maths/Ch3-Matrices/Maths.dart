import 'package:flutter/material.dart';
import 'package:class_app/Maths/chapters.dart';
import 'Questions/main.dart';

// ignore: camel_case_types
class M extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        runApp(Maths());
      },
      child: MaterialApp(
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
                    Text('Question Bank', style: new TextStyle(fontSize: 30.0)),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  runApp(MyApp());
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
      ),
    );
  }
}
