import 'package:flutter/material.dart';
import 'package:loud_and_clear/screens/web/contacts_screen.dart';

class TopBarMenu extends StatefulWidget {
  const TopBarMenu({Key? key}) : super(key: key);

  @override
  State<TopBarMenu> createState() => _TopBarMenuState();
}

class _TopBarMenuState extends State<TopBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              Image.asset("assets/images/logo.png"),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.05)),
              child: Center(
                child: Text(
                  "A PROPOS".toUpperCase(),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          flex: 3,
          child: PopupMenuButton(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
              ),
              child: Center(
                child: Text(
                  "NOS ÉVÉNEMENTS".toUpperCase(),
                  maxLines: 1,
                ),
              ),
            ),
            elevation: 9,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  height: 30,
                  value: "police",
                  child: Row(
                    children: [
                      Text(
                        "INNAUGURATION".toUpperCase(),
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  height: 30,
                  value: "share",
                  child: Row(
                    children: [
                      Text(
                        "NETWORKMEETING".toUpperCase(),
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  height: 30,
                  value: "rappel",
                  child: Row(
                    children: [
                      Text(
                        "TEAMBUILDING",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ];
            },
            onSelected: (val) async {},
            offset: const Offset(0, 25),
            tooltip: '',
            padding: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
              ),
              child: Center(
                child: Text(
                  "RÉFÉRENCES".toUpperCase(),
                  maxLines: 1,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          flex: 3,
          child: PopupMenuButton(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
              ),
              child: Center(
                child: Text(
                  "STRATEGIE & MARKETING".toUpperCase(),
                  maxLines: 1,
                ),
              ),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  height: 30,
                  value: "police",
                  child: Row(
                    children: [
                      Text(
                        "IDENTITIE VISUEL".toUpperCase(),
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  height: 30,
                  value: "share",
                  child: Row(
                    children: [
                      Text(
                        "PROMOTION DE LA MARQUE".toUpperCase(),
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  height: 30,
                  value: "rappel",
                  child: Row(
                    children: [
                      Text(
                        "LIVE MUSIC CLUB",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ];
            },
            onSelected: (val) async {},
            offset: const Offset(0, 25),
            tooltip: '',
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 2
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        const SizedBox(width: 2),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.05)),
              child: Center(
                child: Text(
                  "GALERIE".toUpperCase(),
                  maxLines: 1,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const ContactsScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  color: Colors.white60,
                  child: Center(
                    child: Text(
                      'CONTACTS'.toUpperCase(),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
