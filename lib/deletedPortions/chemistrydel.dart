import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:class_app/main.dart';
import './deletedportions.dart';

// ignore: camel_case_types
class Chemistry_Deleted_Portions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chemistry Deleted Portions"),
          backgroundColor: Colors.cyanAccent,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Chapter-1,Solid State',
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Electrical and magnetic properties. Band theory of metals\n,"
                  "conductors, semiconductors and insulators and n and p type\n"
                  "semi conductors. "),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-2,Solutions",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text("Abnormal molecular mass, Van't Hoff factor "),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-3, ElectroChemistry",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Lead accumulator, fuel cells, corrosion, law of electrolysis"
                  "(elementary idea), dry cell- electrolytic cells and Galvaniccells, "),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-4,Chemical Kinetics",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text("Concept of collision theory (elementary idea, no"
                  "mathematical treatment), activation energy, Arrhenius equation. "),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-5,Surface Chemistry",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "emulsion - types of emulsions, catalysis: homogenous and"
                  "heterogeneous, activity and selectivity of solid catalysts;"
                  "enzyme catalysis, "),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-7,p-block Elements",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Preparation and properties of Phosphine, Sulphuric Acid:"
                  "     industrial process of manufacture, Oxides of Nitrogen"
                  "     (Structure only); Phosphorus - allotropic forms, compounds of"
                  "   Phosphorus: Preparation and properties of Halides and"
                  "   Oxo acids (elementary idea only). "),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-8,d anf f block elements",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "    Chemical reactivity of lanthanoids, Actinoids -Electronic"
                  "    configuration, oxidation states and comparison with lanthanoids."
                  "Preparation and properties of KMnO4 and K2Cr2O7"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-9,Co-ordination Compounds",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Structure and stereoisomerism, importance of coordination"
                  "compounds (in qualitative analysis, extraction of metals and"
                  "biological system)"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-10,Haloalkanes and Haloarenes",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Uses and environmental effects of -dichloromethane,"
                  "trichloromethane, tetrachloromethane, iodoform, freons, DDT."),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-11,Alcohols,Phenols and Ethers",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle:
                  Text("uses with special reference to methanol and ethanol."),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-13,Amines",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle:
                  Text("Diazonium salts: Preparation, chemical reactions and"
                      "importance in synthetic organic chemistry. "),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("Chapter-14,BioMolecules",
                  style: new TextStyle(fontSize: 30.0)),
              subtitle: Text(
                  "Oligosaccharides (sucrose, lactose, maltose), polysaccharides"
                  "(starch, cellulose, glycogen), importance of carbohydrates."
                  "Vitamins– classification and functions. Enzymes. Hormones -"
                  "Elementary idea excluding structure."),
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
