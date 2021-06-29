import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicalSummaries extends StatefulWidget {
  @override
  _MedicalSummariesState createState() => _MedicalSummariesState();
}

class _MedicalSummariesState extends State<MedicalSummaries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text(
            'Medical Summaries',
            style: TextStyle(color: Colors.red, fontSize: 56.0),
          ),
        ),
      ),
    );
  }
}
