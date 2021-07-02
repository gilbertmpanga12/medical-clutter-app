import 'package:flutter/widgets.dart';

class ServicesActions {
  String title;
  String subtitle;
  Widget icon;
  String route;
  String operationType;

  ServicesActions(
      this.title, this.subtitle, this.icon, this.route, this.operationType);
}

class MedicalText {
  String title;
  String description;
  String date;
  MedicalText(this.title, this.description, this.date);
}

class OperationType {
  String operationType;
  OperationType(this.operationType);
}

// Opertions => history | medical_bills | screenings | medical_summaries