import 'package:clutter/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    const _defaultTextColor = Color(0xff1F2937);
    List<ServicesActions> _cardActions = [
      ServicesActions(
          "Medical bills",
          "Allows you to keep track of receipts.",
          Icon(Icons.monetization_on_rounded),
          '/medical-bills',
          "medical_bills"),
      ServicesActions("Screenings", "Store tabular data, medical images.",
          Icon(Icons.biotech), "/screenings", "screenings"),
      ServicesActions("Doctors notes & summaries", "Store screening summaries.",
          Icon(Icons.notes_sharp), "/medical-bills", "medical_summaries"),
    ];

    Widget _listServiceActions() {
      return Column(
        children: _cardActions
            .map((item) => InkWell(
                  child: Card(
                    elevation: 3.0,
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
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                  ),
                  onTap: () async => await Navigator.pushNamed(
                      context, item.route,
                      arguments: OperationType(item.operationType)),
                ))
            .toList(),
      );
    }

    const double _smallTextSize = 16.0;
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              height: 110.0,
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tom, you have',
                            style: TextStyle(
                              fontSize: _smallTextSize,
                              fontWeight: FontWeight.w400,
                              color:
                                  _defaultTextColor, //const Color(0xFF6B7280)
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text('1002 records',
                              style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontWeight: FontWeight.w900,
                                  color: _defaultTextColor),
                              textAlign: TextAlign.left),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 17.0),
            ),
          ),
          Container(
            child: Row(
              children: [
                Text('CATEGORIES',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: _defaultTextColor)) //const Color(0xFF6B7280)
              ],
            ),
            padding: EdgeInsets.only(top: 16.0, bottom: 13.0, left: 11.5),
          ),
          _listServiceActions()
        ],
      ),
      padding: EdgeInsets.only(left: 13.0, right: 13.0, top: 15.0),
    );
  }
}
