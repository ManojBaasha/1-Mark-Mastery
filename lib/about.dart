import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';

class About extends StatelessWidget {
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
                    Text(' App',
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
                          'This app has no ads and is completely free. \n '
                          'Designed for 12th Grade CBSE Students focusing only on the one mark questions \n Smooth and Simple Design for ease of use\n'
                          'Updated regularly to increase the number of questions and performance. \n ALL THE BEST',
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
