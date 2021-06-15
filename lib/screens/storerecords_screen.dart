import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreMedicalRecordsScreen extends StatefulWidget {
  @override
  _StoreMedicalRecordsScreenState createState() =>
      _StoreMedicalRecordsScreenState();
}

class _StoreMedicalRecordsScreenState extends State<StoreMedicalRecordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'StoreMedicalRecords',
        style: TextStyle(color: Colors.red, fontSize: 56.0),
      ),
    );
  }
}
