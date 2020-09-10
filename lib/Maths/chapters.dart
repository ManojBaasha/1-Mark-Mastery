import 'package:flutter/material.dart';
import 'package:class_app/main.dart';
import 'Ch1-Relations_And_Functions/Maths.dart';
import 'Ch2-Inverse Trigonometric Functions/Maths.dart';
import 'Ch3-Matrices/Maths.dart';
import 'Ch4-Determinants/Maths.dart';
import 'Ch5-Continuity And Differentiablility/Maths.dart';
import 'Ch6-Application Of Derivatives/Maths.dart';
import 'Ch7-Integrals/Maths.dart';
import 'Ch8-Application Of Integrals/Maths.dart';
import 'Ch9-Differential Equations/Maths.dart';
import 'Ch10-Vector Algebra/Maths.dart';
import 'Ch11-Three Dimennsional Geometry/Maths.dart';
import 'Ch13-Probabiliity/Maths.dart';
import 'assertion/Assertion.dart';

class Maths extends StatelessWidget {
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
                Text('Maths',
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
                          _buildFoodItem(
                              TeXViewDocumentExamples(),
                              'Assertion,Reasoning',
                              '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(RF(), 'Relations,Functions', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(ITF(), 'Inverse Trigonometry', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(
                              M(), 'Matrices', '', 'assets/images/maths2.png'),
                          _buildFoodItem(D(), 'Determinants', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(CD(), 'Continuity', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(AD(), 'Application Derivative', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(
                              I(), 'Integrals', '', 'assets/images/maths2.png'),
                          _buildFoodItem(AI(), 'Derivatives', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(DE(), 'Differential Equations', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(VA(), 'Vector Algebra', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(DG(), '3D Geometry', '',
                              'assets/images/maths2.png'),
                          _buildFoodItem(P(), 'Probability', '',
                              'assets/images/maths2.png'),
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
                    child: Row(children: [
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
                        ]),
                    onPressed: () {
                      runApp(nextPage);
                    },
                  )
                ])),
                IconButton(
                    icon: Icon(Icons.navigate_next),
                    color: Colors.black,
                    onPressed: () {
                      runApp(nextPage);
                    })
              ],
            )));
  }
}
