import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:loud_and_clear/models/feed_model.dart';
import 'package:loud_and_clear/widgets/custom_layout.dart';
import 'package:loud_and_clear/widgets/top_bar_menu.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({Key? key}) : super(key: key);

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return CustomLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: screenSize.width / 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width / 1.5,
                  child: Text(
                    "AGENCE EVENT CORPORATE",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w800, fontSize: 70, height: 0.8),
                  ),
                ),
                Text(
                  "LOUD & CLEAR PRODUCTION",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w100,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 39),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  width: 230,
                  height: 30,
                  color: Colors.white60,
                  child: const Center(
                    child: Text("ACTUALITES"),
                  ),
                ),
                SizedBox(
                  width: screenSize.width,
                  height: 250,
                  // color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        // color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/icons/btn_next.png",
                                fit: BoxFit.contain,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/icons/btn_prev.png",
                                fit: BoxFit.contain,
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: events.map(
                              (actualites) {
                                return Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: const EdgeInsets.all(30),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'In The News',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w200,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                actualites.title.toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4!
                                                    .copyWith(
                                                      color: Colors.black,
                                                    ),
                                              ),
                                              Text(
                                                DateFormat('dd. MM. yyyy')
                                                    .format(actualites.date)
                                                    .toString(),
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w200,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                actualites.location,
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w200,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const Text('Read more…')
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Image.asset(
                                          "assets/images/${actualites.imageUrl.first}",
                                          fit: BoxFit.cover,
                                          height: double.infinity,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
