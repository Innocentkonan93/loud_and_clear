import 'package:flutter/material.dart';

class MenuExample extends StatefulWidget {
  @override
  _MenuExampleState createState() => _MenuExampleState();
}

class _MenuExampleState extends State<MenuExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('show menu'),
        ),
      ),
    );
  }
}