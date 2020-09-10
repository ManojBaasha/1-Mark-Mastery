import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Physics/chapters.dart';
import './deletedPortions/deletedportions.dart';
import 'Chemistry/chapters.dart';
import 'Maths/chapters.dart';
import 'package:class_app/routs.dart';
import 'package:class_app/screens/splash/splash_screen.dart';
import 'package:class_app/theme.dart';
import 'about.dart';
import 'review.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static String routeName = "/my_app";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme(),
          // home: SplashScreen(),
          // We use routeName so that we dont need to remember the name
          initialRoute: SplashScreen.routeName,
          routes: routes,
        ));
  }
}

class FrontPage extends StatelessWidget {
  static String routeName = "/front_page";
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                    );
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
                Text('1',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Mark',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                Text('Mastery',
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
                    child: ListView(
                      children: [
                        _buildFoodItem(
                            Physics(), 'Physics', '', 'assets/physics.png'),
                        _buildFoodItem(Chemistry(), 'Chemistry', '',
                            'assets/chemistry.png'),
                        _buildFoodItem(
                            Maths(), 'Maths', '', 'assets/maths.jpg'),
                        _buildFoodItem(Deleted_Portions(),
                            'Deleted Portions 20-21', '', 'assets/delete.png'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.info,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: FlatButton(
                        child: Center(
                          child: Icon(
                            Icons.rate_review,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          runApp(Review());
                        },
                      ),
                    ),
                    Container(
                        height: 65.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF1C1428)),
                        child: Center(
                          child: FlatButton(
                            child: Text(
                              'About',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                            onPressed: () {
                              runApp(About());
                            },
                          ),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
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
