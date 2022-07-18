import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loud_and_clear/widgets/custom_layout.dart';

class DatabaseScreen extends StatefulWidget {
  const DatabaseScreen({Key? key}) : super(key: key);

  @override
  State<DatabaseScreen> createState() => _DatabaseScreenState();
}

class _DatabaseScreenState extends State<DatabaseScreen> {
  List<String> items = [
    "Banques et assurances",
    "Institutions",
    "Internationales",
    "Secteur Privé",
    "Industries",
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
                    child: Text(
                      "BASE DE DONNEES",
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
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(100, 85, 45, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nous allons sélectionner environ 150 décideurs et chefs d’entreprise correspondant à votre coeur de cible afin d’établir la notoriété de votre marque par le biais du E-mailing (diffusion des supports électroniques par mail).\n\n",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                              Text(
                                "Environ 150 décideurs et chefs d’entreprise",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.black),
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
            )
          ],
        ),
      ),
    );
  }
}
