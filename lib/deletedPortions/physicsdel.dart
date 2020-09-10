import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:class_app/main.dart';
import './deletedportions.dart';

// ignore: camel_case_types
class Physics_Deleted_Portions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Physics Deleted Portions"),
          backgroundColor: Colors.cyanAccent,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Chapter-1,Electric Charges And Fields',
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text("Uniformly Charged Thin Spherical Shell"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-3,Current Electricity",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Carbon Resistors\n Colour code of Carbon Resistors \n Series And Parallel Combination Of Resistors"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-4,Moving Charges And Magnetism",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text("Cyclotron"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-5,Magnetism And Matter",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Magnetic Field Intensity Due To a Magnetic Dipole along and perpendicular to its axis\n Torque On a Magnetic Dipole in a uniform magnetic Field"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-7,Alternating Current",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text("Power Factors And Wattless Current"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-8,Electromagnetic Waves",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text("Basic Idea Of Displacement Current"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-9,Ray Optics And Optical Instruments",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Reflection Of Light,Spherical Mirrors,Mirror Formula\nScattering Of Light\nResolving Power Of MicroScope And Astronomical Telescope\nPolarisation"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-11,Dual Nature Of Radiation And Matter",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text("Davisson-Germer Experiment"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-13,Nuclei",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "RadioActivity,Alpha,Beta,Gamma Particles\nRadioactive Decay Law And Half Life And Mean Life"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-14,Semiconductors Electronics",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Zener Diode And Their characteristics\nZener As a Voltage Regulator"),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text("Back",
                  style: new TextStyle(
                    fontSize: 30.0,
                  )),
              onTap: () {
                runApp(Deleted_Portions());
              },
            ),
          ],
        ),
      ),
    );
  }
}
