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
                color: _defaultTextColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: MedicalImagesScreen(
          operationType: "screenings",
        ),
      ),
    );
  }
}
