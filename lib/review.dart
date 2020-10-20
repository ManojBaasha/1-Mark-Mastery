import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:class_app/icon/my_flutter_app_icons.dart';

class Review extends StatelessWidget {
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
  Future<void> _launched;
  String _launchUrl = 'https://www.google.com';
  Future<void> _launcherInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_valur'},
      );
    } else {
      throw 'Could not Launch $url';
    }
  }

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
                  Text('Leave',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 25.0)),
                  SizedBox(width: 10.0),
                  Text('A',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 25.0)),
                  Text(' Like!',
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: FlatButton(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: 25.0),
                          children: [
                            TextSpan(
                                text:
                                    'Finished Learning all the questions?Don\'t worry, this is just the start.\n More questions would be updated regularly on my app to make sure you master the one mark questions completely before the board exams'),
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: FlatButton(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: 25.0),
                          children: [
                            TextSpan(
                                text:
                                    'Enjoying the app?\nLeave a like on the playstore!\n '),
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(MyFlutterApp.google_play),
                              ),
                            ),
                            TextSpan(text: 'Click Here!'),
                          ],
                        ),
                      ),
                      onPressed: () {
                        _launcherInBrowser('https://play.google.com/store/apps/details?id=com.manojelango.onemarkmastery');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: FlatButton(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: 25.0),
                          children: [
                            TextSpan(
                                text:
                                    'Don\'t forget to join our dicord server!\n'),
                            WidgetSpan(
                                child: Image(
                                    image:
                                        AssetImage('assets/images/discord.png'),
                                    fit: BoxFit.contain,
                                    height: 50.0,
                                    width: 50.0)),
                            TextSpan(text: 'Click Here!'),
                          ],
                        ),
                      ),
                      onPressed: () {
                        _launcherInBrowser('https://discord.gg/KjM3QJt');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: FlatButton(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: 25.0),
                          children: [
                            TextSpan(
                                text:
                                    'Follow me on instagram for more updates\n'),
                            WidgetSpan(
                              child: Image(
                                  image: AssetImage('assets/images/insta.png'),
                                  fit: BoxFit.contain,
                                  height: 50.0,
                                  width: 50.0),
                            ),
                            TextSpan(text: 'Click Here!'),
                          ],
                        ),
                      ),
                      onPressed: () {
                        _launcherInBrowser(
                            'https://www.instagram.com/not_jonam/');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: FlatButton(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontSize: 25.0),
                          children: [
                            TextSpan(
                                text:
                                    'Want Additional Question? I got you covered. I\'ve added a google drive link of more than just one mark questions. Access to unlimited worksheets and practice papers\n '),
                            WidgetSpan(
                              child: Image(
                                  image: AssetImage('assets/images/drive.png'),
                                  fit: BoxFit.contain,
                                  height: 50.0,
                                  width: 50.0),
                            ),
                            TextSpan(text: 'Click Here!'),
                          ],
                        ),
                      ),
                      onPressed: () {
                        _launcherInBrowser(
                            'https://drive.google.com/drive/folders/1hA5LTS0g6dypYGTwuCz3ELV8jKTPnjWO?usp=sharing');
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
