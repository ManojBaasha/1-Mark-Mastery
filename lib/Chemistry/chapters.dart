import 'package:flutter/material.dart';
import 'package:class_app/main.dart';
import 'Ch1-The Solid State/Chemistry.dart';
import 'Ch2-Solutions/Chemistry.dart';
import 'Ch3-ElectroChemistry/Chemistry.dart';
import 'Ch4-Chemical Kinetics/Chemistry.dart';
import 'Ch5-Surface Chemistry/Chemistry.dart';
import 'Ch7-The p_block/Chemistry.dart';
import 'Ch8-The d_block and f_block/Chemistry.dart';
import 'Ch9-Coordination Compounds/Chemistry.dart';
import 'Ch10-Haloalkenes And HaloArenes/Chemistry.dart';
import 'Ch11-Alcohols,Phenols And Ethers/Chemistry.dart';
import 'Ch12-Aldehydes, Ketones, And Carboxylic Acid/Chemistry.dart';
import 'Ch13-Amines/Chemistry.dart';
import 'Ch14-BioMolecules/Chemistry.dart';
import './Organic_Chemistry.dart';

class Chemistry extends StatelessWidget {
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
                Text('Chemistry',
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
                              'Specific Name Reactions',
                              '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(SS(), 'The Solid State', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(S(), 'Solutions', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(EC(), 'ElectroChemistry', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(CK(), 'Chemical Kinetics', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(SC(), 'Surface Chemistry', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(P(), 'The p_block', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(DF(), 'The d_block and f_block', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(CC(), 'Coordinate Compounds', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(HH(), 'Haloalkenes,HaloArenes', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(APE(), 'Alcohols,Phenols,Ethers', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(AKC(), 'Aldehydes,Ketones', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(A(), 'Amines', '',
                              'assets/chemistry_chapters.png'),
                          _buildFoodItem(B(), 'BioMolecules', '',
                              'assets/chemistry_chapters.png'),
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
