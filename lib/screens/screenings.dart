import 'package:clutter/screens/images_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screenings extends StatefulWidget {
  @override
  _ScreeningsState createState() => _ScreeningsState();
}

class _ScreeningsState extends State<Screenings> {
  @override
  Widget build(BuildContext context) {
    const _defaultTextColor = Color(0xff1F2937);
    const _indicatorColor = Color(0xff111827);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.amberAccent,
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: _indicatorColor),
          title: Text(
            'Screenings',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: _defaultTextColor, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: SafeArea(
          child: MedicalImagesScreen(
            operationType: "screenings",
          ),
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
                        leading: new Icon(Icons.camera),
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
          label: Text('TAKE PICTURES',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              )),
          icon: Icon(Icons.camera),
          backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndFloat);
  }
}
