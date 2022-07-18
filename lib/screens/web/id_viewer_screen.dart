import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loud_and_clear/widgets/custom_layout.dart';

class IdViewerScreen extends StatefulWidget {
  const IdViewerScreen({Key? key}) : super(key: key);

  @override
  State<IdViewerScreen> createState() => _IdViewerScreenState();
}

class _IdViewerScreenState extends State<IdViewerScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    EdgeInsets margin = EdgeInsets.symmetric(
      vertical: screenSize.height / 9,
      horizontal: screenSize.width / 6,
    );
    return CustomLayout(
      child: Container(
        margin: margin,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: screenSize.width / 4,
                  height: 30,
                  color: const Color(0XFFAFAFAF),
                  child: Center(
                    child: Text(
                      "IDENTITE VISUELLE",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: double.infinity,
                        color: Colors.black12,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 85, 45, 0),
                          child: AutoSizeText(
                            'SITE INTERNE\nSUPPORTS \nCOMMUNICATION \nVISUELS DE PROMOTION \nLOGO \nKAKEMONO \nFILM INSTITUTIONNEL',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: Colors.black,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: double.infinity,
                        padding: const EdgeInsets.fromLTRB(85, 85, 85, 0),
                        child: Text(
                          "Plus qu’une simple agence évènementielle, Loud&Clear Production est une source d’idées originales et de prestations de qualité. \n\nNotre équipe met à votre service son expérience et ses idées novatrices afin de faire vivre à votre cible une expérience impactante. \n\nFaites confiance à notre savoir-faire pour remodeler votre image de marque, ou tout simplement éblouir vos clients & prospects. \(Mise à jour de vos supports de communication, site internet, catalogue, plaquette produit, visuel digital par secteur d’activité\).",
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: Colors.black87,
                                  ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
