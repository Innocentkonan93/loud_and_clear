import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_layout.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
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
                          padding: const EdgeInsets.fromLTRB(80, 65, 45, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: AutoSizeText(
                                      "CONTACTEZ-NOUS",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline3!
                                          .copyWith(
                                            color: Colors.black,
                                          ),
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 50),
                              Column(
                                children: [
                                  Text(
                                    '00225 07 07 59 69 85 \ninfo@loudandclearproductions.com',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                          color: Colors.black,
                                        ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "COCODY RIVIERA, \nABIDJAN, COTE D’IVOIRE",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                              const SizedBox(height: 30),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "www.loudandclearproductions.com",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                        color: Colors.black,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.grey[100],
                        padding: const EdgeInsets.fromLTRB(85, 85, 100, 0),
                        child: Form(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black12)),
                                height: 30,
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Nom & Prénom",
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.fromLTRB(12, 8, 12, 8),
                                    isDense: true,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                              color: Colors.black12)),
                                      height: 30,
                                      child: const TextField(
                                        decoration: InputDecoration(
                                          hintText: "Téléphone",
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.fromLTRB(12, 8, 12, 8),
                                          isDense: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                              color: Colors.black12)),
                                      height: 30,
                                      child: const TextField(
                                        decoration: InputDecoration(
                                          hintText: "Téléphone",
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.fromLTRB(12, 8, 12, 8),
                                          isDense: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black12)),
                                height: 30,
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Société",
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.fromLTRB(12, 8, 12, 8),
                                    isDense: true,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black12)),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Message",
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.fromLTRB(12, 8, 12, 8),
                                    isDense: true,
                                  ),
                                  maxLines: 8,
                                ),
                              ),
                              const SizedBox(height: 20),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Envoyer'),
                                    style: ElevatedButton.styleFrom(
                                      // maximumSize: Size(screenSize.width/14, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      primary: const Color(0XFF0085D1)
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
