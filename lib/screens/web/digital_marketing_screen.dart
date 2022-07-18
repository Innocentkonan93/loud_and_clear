import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loud_and_clear/widgets/custom_layout.dart';

class DigitalMarketingScreen extends StatefulWidget {
  const DigitalMarketingScreen({Key? key}) : super(key: key);

  @override
  State<DigitalMarketingScreen> createState() => _DigitalMarketingScreenState();
}

class _DigitalMarketingScreenState extends State<DigitalMarketingScreen> {
  List<String> items = [
    "Accroître la visibilité des produits et services",
    "Faire la publicité de ses activités online",
    "Rechercher des partenaires commerciaux",
    "Réduire la distance avec ses clients",
    "Augmenter le capital sympathie"
  ];
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
                    child: AutoSizeText(
                      "MARKETING DIGITAL",
                      style: Theme.of(context).textTheme.headline3,
                      maxLines: 1,
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
                      child: SizedBox(
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 45, 45, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "ASSEOIR VOTRE NOTORIÉTÉ ET COMMUNIQUER\n\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.black),
                                    maxLines: 2,
                              ),
                              Text(
                                "Se servir d’internet pour accroître votre notoriété et augmenter les chances de succès de vos Produits et Services. \nUtilisation efficiente et intelligente des réseaux sociaux afin d’assurer une présence forte, active et exploiter internet.\n\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                              AutoSizeText(
                                "ASSEOIR VOTRE NOTORIÉTÉ ET COMMUNIQUER",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.black),
                                    maxLines: 1,
                              ),
                              const SizedBox(height: 50),
                              ...items.map((e) {
                                return Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.orange[300],
                                      size: 10,
                                    ),
                                    const SizedBox(width: 50),
                                    Flexible(
                                      child: AutoSizeText(
                                        e.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(color: Colors.black),
                                        maxLines: 1,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                  ],
                                );
                              }).toList()
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
