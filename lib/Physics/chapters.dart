import 'package:flutter/material.dart';
import 'Ch1-Electric Charges And Fields/physics.dart';
import 'Ch2-Electrostatic Potential and Capacitance/physics.dart';
import 'Ch3-Current Electricity/physics.dart';
import 'Ch4-Moving Charges and Magnetism/physics.dart';
import 'Ch5-Magnetism And Matter/physics.dart';
import 'Ch6-Electromagnetic Induction/physics.dart';
import 'Ch7-Alternating Current/physics.dart';
import 'Ch8-Electromagnetic Waves/physics.dart';
import 'Ch9-Ray Optics And Optical Instruments/physics.dart';
import 'Ch10-Wave Optics/physics.dart';
import 'Ch11-Dual Nature of Radiation And Matter/physics.dart';
import 'Ch12-Atoms/physics.dart';
import 'Ch13-Nuclei/physics.dart';
import 'Ch14-Semiconductor Electronics Materials Devices And Simple Circuits/physics.dart';
import 'Ch15-Communication Systems/physics.dart';
import 'package:class_app/main.dart';

class Physics extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    runApp(FrontPage());
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Physics',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Chapters',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _buildFoodItem(EC(), 'Electric Charge, Fields', '',
                              'assets/images/physics.png'),
                          _buildFoodItem(ES(), 'Electrostatic Potential', '',
                              'assets/images/physics.png'),
                          _buildFoodItem(CE(), 'Current Elactricity', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(MC(), 'Magnetism', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(MM(), 'Magnetism And Matter', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(EI(), 'Electromagnet Induct.', '',
                              'assets/images/physics.png'),
                          _buildFoodItem(AC(), 'Alternationg Current', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(EW(), 'Electromagnetic Waves', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(RO(), 'Ray Optics', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(WO(), 'Wave Optics', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(DN(), 'Dual Nature ', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(
                              A(), 'Atoms', '', 'assets/images/physics2.png'),
                          _buildFoodItem(
                              N(), 'Nuclei', '', 'assets/images/physics2.png'),
                          _buildFoodItem(S(), 'Semiconductor', '',
                              'assets/images/physics2.png'),
                          _buildFoodItem(C(), 'Communication Systems', '',
                              'assets/images/physics2.png'),
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(
      var nextPage, String foodName, String price, String ImgPath) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                      tag: ImgPath,
                      child: Image(
                          image: AssetImage(ImgPath),
                          fit: BoxFit.contain,
                          height: 75.0,
                          width: 75.0)),
                  SizedBox(width: 10.0),
                  FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodName,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold)),
                        Text(price,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                color: Colors.grey))
                      ],
                    ),
                    onPressed: () {
                      runApp(nextPage);
                    },
                  )
                ],
              ),
            ),
            IconButton(
                icon: Icon(Icons.navigate_next),
                color: Colors.black,
                onPressed: () {
                  runApp(nextPage);
                })
          ],
        ),
      ),
    );
  }
}
