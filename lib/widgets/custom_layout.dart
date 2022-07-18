import 'package:flutter/material.dart';
import 'package:loud_and_clear/widgets/top_bar_menu.dart';

class CustomLayout extends StatefulWidget {
  const CustomLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<CustomLayout> createState() => _CustomLayoutState();
}

class _CustomLayoutState extends State<CustomLayout> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFF2C2C2A),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Opacity(
              opacity: 0.10,
              child: Image.asset(
                "assets/images/bg.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screenSize.width / 18, 30, screenSize.width / 18, 0),
                child: PreferredSize(
                  preferredSize: Size(screenSize.width, 50),
                  child: const TopBarMenu(),
                ),
              ),
              Expanded(
                child: widget.child,
              )
            ],
          )
        ],
      ),
    );
  }
}
