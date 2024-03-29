import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';

class info extends StatelessWidget {
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
    return WillPopScope(
        onWillPop: () {
          runApp(FrontPage());
        },
        child: Scaffold(
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
                    Text('About',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(width: 10.0),
                    Text('the',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 25.0)),
                    Text(' Author',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0))
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                height: MediaQuery.of(context).size.height - 185.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0)),
                ),
                child: ListView(
                  primary: false,
                  padding: EdgeInsets.only(left: 25.0, right: 20.0),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 45.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: Text(
                          'Hi! I\'m Manoj Elango, I\'m a CBSE 12th grader too and this is my first App!'
                          ' I\'ve been working on this app for almost 3 months now and its finally here!'
                          ' I developed this app just to help the students to learn during the quarantine and to gain more resources easily and for free \n '
                          'To support me and for more content, don\'t forget to share this app with your friends',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
