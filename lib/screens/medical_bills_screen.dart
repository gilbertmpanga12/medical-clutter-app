import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicalBillsScreens extends StatefulWidget {
  @override
  _MedicalBillsScreensState createState() => _MedicalBillsScreensState();
}

class _MedicalBillsScreensState extends State<MedicalBillsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text(
            'Medical bills',
            style: TextStyle(color: Colors.red, fontSize: 56.0),
          ),
        ),
      ),
    );
  }
}
