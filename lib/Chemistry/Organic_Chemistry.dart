import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import './chapters.dart';

class TeXExample {
  static TeXViewWidget sandmeyer =
      _teXViewWidget(r"""<h4>Sandmeyer Reaction</h4>""", r""" 
       
      <p>The Cl, Br and CN nucleophiles  can easily be introduced in the benzene ring of benzene diazonium salt in the presence of Cu(I) ion. This reaction is called Sanmeyer reaction.<br>
      \(\ce{ArN2Cl ->[CuCl/HCl] ArCl + +N2}\)<br>
      \(\ce{ArN2Cl ->[CuBr/HHr] ArBr + +N2}\)<br>
      \(\ce{ArN2CN ->[CuCl/HCN] ArCN + +N2}\)<br>
      </p>
      """);

  static TeXViewWidget gatterman =
      _teXViewWidget(r"<h4>Gatterman Reaction</h4>", r"""
     Chlorine or bromine can be introduced in the benzene ring by treating the benzene diazonium salt solution with correspondin halogen acid in the presence of copper powder. This is referred  as Gatterman reaction.<br>
     \(\ce{ArN2Cl ->[Cu/HCl] ArCl + +N2 + CuX}\)<br>
     \(\ce{ArN2Cl ->[Cu/HBr] ArBr + +N2 + CuX}\)<br>
     Note: The yield in Sandmeyer reaction is found to be better than Gatterman reaction.
     """);

  static TeXViewWidget balz = _teXViewWidget(
      r"<h4>Balz-Schiemann Reaction</h4>",
      r"""  When arenediazonium chloride is treated with fluoroboric acid , arene diazonium fluroborate is precipitated which on heating decomposes to yield aryl fluoride.
      \(\ce{ArN2Cl + HB4 ->ArN2BrF4}\)<br>
      \(\ce{ArN2BrF4 ->[Heat] ArF + BF3 + N2}\)<br>
      
      """);

  static TeXViewWidget finkel = _teXViewWidget(r"<h4>Finkelstein Reaction</h4>",
      r"""Alkyl iodides are often prepared by the reaction of alkyl chlorides bromides  with Nal in dry acetone. This reaction is known as Finkelstein reaction.
      \(\ce{RX + NaI -> RI + NAX}\)<br>
      (X=Cl,Br)<br>
      Note : This reaction in forward direction can be favoured by precipitating NaX  formed in dry acetone (according to Le Chatelier’s principle.)
      """);

  static TeXViewWidget chemistryEquations =
      _teXViewWidget(r"<h4>Chemistry Equations</h4>", r"""<p>    
     \( \ce{CO2 + C -> 2 CO} \) <br>
     \( \ce{Hg^2+ ->[I-] HgI2 ->[I-] [Hg^{II}I4]^2-} \)<br>
     Scroll long formulas in Katex $$ \ce{x Na(NH4)HPO4 ->[\Delta] (NaPO3)_x + x Nh4 ^ + x H2O} $$ <br>
    </p>""");

  static TeXViewWidget swartz = _teXViewWidget(r"<h4>Swarts Reaction</h4>",
      r"""Heating an alkyl chloride / bromide in the presence of a metallic fluoride such as AgF, Hg2F2 or SbF3 gives alkyl fluorides. The reaction is termed as Swarts reaction.
      \(\ce{CH3X + AgF -> H3CF + AgX}\)<br>
      (X=Cl,Br)<br>
      Note : Note : Finkelstein Reaction and Swarts Reaction are known as halogen exchange reaction.
      """);

  static TeXViewWidget wurtz = _teXViewWidget(r"<h4>Wurtz Reaction</h4>",
      r"""Alkyl halidas react with sodium in dry ether to give hydrocarbons containing double the number of carbon atoms present in the halide. This reaction is known as Wultz reaction.
      \(\ce{CH3Br+2Na+BrCH3->CH3CH3+2NaBr}\)<br>
      \(\ce{C2H5Br+2Na+BrC2H5->C2H5C2H5}\)<br>
      """);

  static TeXViewWidget stephen = _teXViewWidget(r"<h4>Stephen reaction</h4>",
      r"""Nitriles are reduced to corresponding imine with stannous chloride in the presence of hydrochloric acid , which on hydrolysis give corresponding aldehyde.  This reaction is called Stephen reaction.<br>
      \(\ce{RCN + SnCl2 + HCl -> RCH=NH}\)<br>
      \(\ce{RCH=NH ->[H3O^+] RCHO}\)<br>
      """);

  static TeXViewWidget tollen = _teXViewWidget(r"<h4>Tollen’s test</h4>",
      r"""On warming an aldehyde with freshly prepared ammoniacal silver nitrate solution ( Tolen’s reagent), a bright silver mirror is produced due to the formation of silver metal. The aldehydes are oxidised to corresponding carboxylate anion. The reaction occurs in alkaline medium.
      <h6>\(\ce{RCHO+2Ag(NH3)2 + OH ->RCOO^- +2Ag + 2H2O + 4NH3}\)<br></h6>
      """);

  static TeXViewWidget fehling = _teXViewWidget(r"<h4>Fehling’s test </h4>",
      r"""Fehling reagent comprise of two solutions. Fehling solution A and Fehling solution B. Fehling solution A is aqueous copper sulphate and Fehling solution B is alkaline sodium potassium tartarate ( Rochelle salt ). These two solutions are mixed in equal amounts before test. On heating an aldehyde with Fehling’s reagent, a reddish brown precipitate is obtained . Aldehydes are oxidised to corresponding carboxylate anian. Aromatic aldehydes do not respond to this test.
      <h6>\(\ce{RCHO + 2Cu^2+ + 5OH ->RCOO^- + Cu2O +3H2O}\)<br></h6>
      """);

  static TeXViewWidget kolbe = _teXViewWidget(r"<h4>Kolbe electrolysis</h4>",
      r"""An aqueous solution of sodium or potassium salt of a carboxylic acid on electrolysis gives alkane containing even number of carbon atoms. It is decarboxylation reaction. The reaction is known as Kolbe electrolysis.
      <h6>\(\ce{2CH3COONa + 2H20 ->[heat] CH3CH3 + 2CO2 + H2 + 2NaOH}\)<br></h6>
      """);

  static TeXViewWidget _teXViewWidget(String title, String body) {
    return TeXViewColumn(
        style: TeXViewStyle(
            margin: TeXViewMargin.all(10),
            padding: TeXViewPadding.all(10),
            borderRadius: TeXViewBorderRadius.all(10),
            border: TeXViewBorder.all(TeXViewBorderDecoration(
                borderWidth: 2,
                borderStyle: TeXViewBorderStyle.Groove,
                borderColor: Colors.green))),
        children: [
          TeXViewDocument(title,
              style: TeXViewStyle(
                  padding: TeXViewPadding.all(10),
                  borderRadius: TeXViewBorderRadius.all(10),
                  textAlign: TeXViewTextAlign.Center,
                  width: 250,
                  margin: TeXViewMargin.zeroAuto(),
                  backgroundColor: Colors.green)),
          TeXViewDocument(body,
              style: TeXViewStyle(margin: TeXViewMargin.only(top: 10)))
        ]);
  }
}

class TeXViewDocumentExamples extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;

  TeXViewDocumentExamples(
      {this.renderingEngine = const TeXViewRenderingEngine.katex()});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Organic Chemistry Reactions"),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXExample.sandmeyer,
              TeXExample.gatterman,
              TeXExample.finkel,
              TeXExample.balz,
              TeXExample.chemistryEquations,
              TeXExample.swartz,
              TeXExample.wurtz,
              TeXExample.stephen,
              TeXExample.tollen,
              TeXExample.fehling,
              TeXExample.kolbe,
            ]),
            style: TeXViewStyle(
              margin: TeXViewMargin.all(10),
              elevation: 10,
              borderRadius: TeXViewBorderRadius.all(25),
              border: TeXViewBorder.all(
                TeXViewBorderDecoration(
                    borderColor: Colors.blue,
                    borderStyle: TeXViewBorderStyle.Solid,
                    borderWidth: 5),
              ),
              backgroundColor: Colors.white,
            ),
            loadingWidgetBuilder: (context) => Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Text("The Window is loading. Please Wait..........")
                ],
              ),
            ),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Coupling Reaction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'Benzene diazonium chloride reacts with phenol molecule at its para position is coupled with the diazonium salt to form p-hydroxyazobenzene. This type of reaction is known as coupling reaction.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/coupling.png'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Wurtz-Fittig Reaction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'A mixture of an alkyl halide and aryl halides gives an alkylarene when treated with sodium in dry ether and is called wurtz fittig reaction'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/wurtsfittig.png'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Fitting Reaction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'Aryl halides also gave analogous compounds when treated with sodium in dry ether, in which two aryl groups are joined together. It is called Fitting reaction.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/fittig.png'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(
                  r"""<h2>Friedel – Crafts alkylation Reaction.</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'When benzene is treated with an alkyl halide in the presence of aluminium chloride , alkylbenene is formed.'
                  'Note : Aromatic carboxylic acids do not undergo Friedel – Crafts reaction because the carboxyl group is deactivating and the catalyst aluminium chloride ( Lewis acid ) gets bonded to the carboxyl group.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/friedal2.jpg'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Friedel Crafts acylation reaction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'The reaction of benzene with an  acyl halide or acid anhydride in the presence of Lewis acids ( AlCl 3) yields acyl benzene.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/friedal1.jpg '),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Reimer – Tiemann Reaction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'On treating phenol with chloroform in the presence of sodium hydroxide , a –CHO group is introduced at ortho position of benzene ring resulting salicylaldehyde. This reaction is known as Reimer-Tiemann reaction.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/reimer.png'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Kolbe’s Reaction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'Phenol with sodium hydroxide gives sodium phenoxide ion which with carbon di acidic medium results hydroxybenzoic acid ( salicylic acid ). This is known as Kolbe’s reaction.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/kolbe.png'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Rosenmund Reduction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'acyl Chloride (acid chloride is hydrogenated over catalyst , palladium or barium sulphate.)'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/reosemund.png'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Etard reaction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'Chromyl chloride oxidizes methyl group to a chromium complex , which on hydrolysis gives corresponding benzaldehyde . This reaction is called Etard reaction.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/retard.jpg'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Gatterman- Koch reaction</h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'When benzene or its derivative is treated with carbon monoxide and hydrogen chloride in the presence of anhydrous aluminium chloride or cuprous chloride, it gives benzaldehyde or substituted benzaldehyde. This reaction is known as Gatterman – Koch reaction.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/koch.png'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(children: [
              TeXViewDocument(r"""<h2>Hinsberg’s Test </h2>""",
                  style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
              TeXViewDocument(
                  'In the reaction with secondary amine, N, N-diethyl – benzenesulphonamide is formed. Since N, N- diethylbenzene sulphonamide does not contain any hydrogen atom attached to nitrogen atom, it is not acidic and hence insoluble in alkali.'),
              TeXViewContainer(
                child: TeXViewImage.asset('assets/images/hinsberg.png'),
                style: TeXViewStyle(
                  margin: TeXViewMargin.all(10),
                  borderRadius: TeXViewBorderRadius.all(20),
                ),
              ),
            ]),
          ),
          Ink(
            color: Colors.green[900],
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: ListTile(
              leading: Icon(Icons.add_circle),
              title: Text('Back',
                  style: new TextStyle(fontSize: 15.0, color: Colors.white)),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                runApp(Chemistry());
              },
            ),
          ),
        ],
      ),
    ));
  }
}
