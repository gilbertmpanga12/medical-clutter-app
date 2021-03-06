import 'package:clutter/screens/create_screen.dart';
import 'package:clutter/screens/text_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clutter/models/models.dart';
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
  //var _defaultTextColor = Color(0xff374151);
  var _indicatorColor = Color(0xff111827);

  static Route<void> _fullscreenDialogRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return MaterialPageRoute<void>(
      builder: (context) => CreateScreenDialog(),
      fullscreenDialog: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final operation =
        ModalRoute.of(context)!.settings.arguments as OperationType;
    final List features = [
      TextScreen(
        operationType: operation.operationType,
      ),
      MedicalImagesScreen(operationType: operation.operationType)
    ];

    String appBarTitle() => operation.operationType == "medical_bills"
        ? "Medical Bills"
        : "Doctor\'s notes & summaries";

    return DefaultTabController(
      child: Scaffold(
          appBar: AppBar(
              iconTheme: IconThemeData(color: _indicatorColor),
              centerTitle: true,
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
                appBarTitle(),
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
                            Navigator.restorablePush<void>(
                                context, _fullscreenDialogRoute);
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                          child: Divider(
                            color: Color(0xffeeeeee),
                            indent: 13.0,
                          ),
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
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat),
      length: tabs.length,
    );
  }
}
