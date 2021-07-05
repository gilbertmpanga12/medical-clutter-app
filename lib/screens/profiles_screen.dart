import 'package:clutter/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _defaultTextColor = Color(0xff1F2937);

  List<ServicesActions> _cardActions = [
    ServicesActions("Name", "Gilbert Stephen Mpanga", Icon(Icons.person),
        '/medical-bills', "medical_bills"),
    ServicesActions("Birthday", "Febuary 20th 1997", Icon(Icons.cake),
        "/screenings", "screenings"),
    ServicesActions("Gender", "Store screening summaries.", Icon(Icons.info),
        "/medical-bills", "medical_summaries")
  ];

  List<ServicesActions> medicalActions = [
    ServicesActions("Blood Type", "Blood Group A", Icon(Icons.bloodtype),
        '/medical-bills', "medical_bills"),
    ServicesActions("Insuarance Number", "Not available yet",
        Icon(Icons.article), "/screenings", "screenings"),
  ];

  List<ServicesActions> addressActions = [
    ServicesActions("Address", "PT Louisville, TX", Icon(Icons.home),
        '/medical-bills', "medical_bills"),
    ServicesActions("Country", "Store tabular data, medical images.",
        Icon(Icons.flag), "/screenings", "screenings"),
    ServicesActions("Email", "Store tabular data, medical images.",
        Icon(Icons.email), "/screenings", "screenings")
  ];

  List<ServicesActions> notesAction = [
    ServicesActions("Notes", "Allows you to keep track of receipts.",
        Icon(Icons.monetization_on_rounded), '/medical-bills', "medical_bills"),
  ];

  Widget _listCardActions() {
    return Padding(
        child: Card(
          elevation: 3.0,
          child: Column(
            children: [
              ...ListTile.divideTiles(
                      context: context,
                      tiles: _cardActions
                          .map((item) => InkWell(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(8.5),
                                  height: 90.0,
                                  child: ListTile(
                                    leading: item.icon,
                                    title: Text(
                                      item.title,
                                      style: TextStyle(
                                          color: _defaultTextColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    subtitle: Padding(
                                      child: Text(item.subtitle),
                                      padding: EdgeInsets.only(top: 4.0),
                                    ),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                ),
                                onTap: () async => await Navigator.pushNamed(
                                    context, item.route,
                                    arguments:
                                        OperationType(item.operationType)),
                              ))
                          .toList())
                  .toList()
            ],
          ),
        ),
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ));
  }

  Widget _listMedicalActions() {
    return Padding(
        child: Card(
          elevation: 3.0,
          child: Column(
            children: [
              ...ListTile.divideTiles(
                      context: context,
                      tiles: medicalActions
                          .map((item) => InkWell(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(8.5),
                                  height: 90.0,
                                  child: ListTile(
                                    leading: item.icon,
                                    title: Text(
                                      item.title,
                                      style: TextStyle(
                                          color: _defaultTextColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    subtitle: Padding(
                                      child: Text(item.subtitle),
                                      padding: EdgeInsets.only(top: 4.0),
                                    ),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                ),
                                onTap: () async => await Navigator.pushNamed(
                                    context, item.route,
                                    arguments:
                                        OperationType(item.operationType)),
                              ))
                          .toList())
                  .toList()
            ],
          ),
        ),
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ));
  }

  Widget _listAddressActions() {
    return Padding(
        child: Card(
          elevation: 3.0,
          child: Column(
            children: [
              ...ListTile.divideTiles(
                      context: context,
                      tiles: addressActions
                          .map((item) => InkWell(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(8.5),
                                  height: 90.0,
                                  child: ListTile(
                                    leading: item.icon,
                                    title: Text(
                                      item.title,
                                      style: TextStyle(
                                          color: _defaultTextColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    subtitle: Padding(
                                      child: Text(item.subtitle),
                                      padding: EdgeInsets.only(top: 4.0),
                                    ),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                ),
                                onTap: () async => await Navigator.pushNamed(
                                    context, item.route,
                                    arguments:
                                        OperationType(item.operationType)),
                              ))
                          .toList())
                  .toList()
            ],
          ),
        ),
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisAlignment: Main,
      children: [
        Container(
          child: Align(
            child: Padding(
              child: Text(
                'PROFILE',
                style: TextStyle(
                    color: _defaultTextColor,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              ),
              padding: EdgeInsets.only(top: 20.0, bottom: 15.0, left: 8.0),
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
        _listCardActions(),
        Container(
          child: Align(
            child: Padding(
              child: Text(
                'MEDICAL INFO',
                style: TextStyle(
                    color: _defaultTextColor,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              ),
              padding: EdgeInsets.only(top: 20.0, bottom: 15.0, left: 8.0),
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
        _listMedicalActions(),
        Container(
          child: Align(
            child: Padding(
              child: Text(
                'CONTACTS',
                style: TextStyle(
                    color: _defaultTextColor,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              ),
              padding: EdgeInsets.only(top: 20.0, bottom: 15.0, left: 8.0),
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
        _listAddressActions()
      ],
    );
  }
}
