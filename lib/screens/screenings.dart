import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screenings extends StatefulWidget {
  @override
  _ScreeningsState createState() => _ScreeningsState();
}

class _ScreeningsState extends State<Screenings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text(
            'Screenings',
            style: TextStyle(color: Colors.red, fontSize: 56.0),
          ),
        ),
      ),
    );
  }
}
