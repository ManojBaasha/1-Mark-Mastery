import 'package:flutter/material.dart';
import 'package:class_app/Maths/chapters.dart';
import 'Questions/pdf.dart';
import 'Questions/pdf2.dart';
import 'Questions/pdf3.dart';
import 'Questions/pdf4.dart';
import 'Questions/pdf5.dart';

// ignore: camel_case_types
class I extends StatelessWidget {
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
              title: Text('Indefinite Integrals 1',
                  style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(MyApp());
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Indefinite Integrals 2',
                  style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(MyApp2());
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Indefinite Integrals 3',
                  style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(MyApp3());
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Indefinite Integrals 4',
                  style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(MyApp4());
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Indefinite Integrals 5',
                  style: new TextStyle(fontSize: 30.0)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(MyApp5());
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
