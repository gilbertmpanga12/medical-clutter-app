import 'package:clutter/screens/text_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'images_screen.dart';

class MedicalBillsScreens extends StatefulWidget {
  @override
  _MedicalBillsScreensState createState() => _MedicalBillsScreensState();
}

class _MedicalBillsScreensState extends State<MedicalBillsScreens> {
  final List<Tab> tabs = <Tab>[
    Tab(text: 'TEXT'),
    Tab(text: 'IMAGES'),
  ];
  final List features = [TextScreen(), MedicalImagesScreen()];
  //var _defaultTextColor = Color(0xff374151);
  var _indicatorColor = Color(0xff111827);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
          appBar: AppBar(
              iconTheme: IconThemeData(color: _indicatorColor),
              bottom: TabBar(
                tabs: tabs,
                indicatorColor: _indicatorColor,
                labelColor: _indicatorColor,
                labelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                indicatorWeight: 2.1,
                unselectedLabelStyle:
                    GoogleFonts.montserrat(fontWeight: FontWeight.w400),
              ),
              title: Text(
                'Medical Bills',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: _indicatorColor, fontWeight: FontWeight.w500),
                ),
              ),
              backgroundColor: Colors.amberAccent),
          body: TabBarView(
            children: features.map((tab) {
              return Container(
                child: tab,
                // color: Colors.amber,
              );
            }).toList(),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          leading: new Icon(Icons.edit),
                          title: new Text(
                            'Manually enter records',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          subtitle: Text(
                            'Enables to use an enditor and store records.',
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ListTile(
                          leading: new Icon(Icons.document_scanner),
                          title: new Text('Use camera to enter records',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                          subtitle: Text(
                              'Uses our photo recognition AI to store records for you.'),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    );
                  });
            },
            label: Text('ADD RECORD',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                )),
            icon: Icon(Icons.post_add),
            backgroundColor: Colors.pink,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat),
      length: tabs.length,
    );
  }
}
