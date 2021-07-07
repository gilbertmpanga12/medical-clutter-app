import 'package:clutter/screens/categories_screen.dart';
import 'package:clutter/screens/home_screen.dart';
import 'package:clutter/screens/medical_bills_screen.dart';
import 'package:clutter/screens/screenings.dart';
import 'package:clutter/screens/sign_in_screen.dart';
import 'package:clutter/screens/sign_up_screen.dart';
import 'package:clutter/screens/storerecords_screen.dart';
import 'package:clutter/screens/summaries_screen.dart';
import 'package:clutter/themes/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme.apply(
    //     bodyColor: Color(0x1F2937), //Color(0xF3F4F6)
    //     displayColor: Colors.green //(0x1F2937),
    //     );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/signup': (context) => SignInScreen(),
        '/signin': (context) => SignUpScreen(),
        '/store-record': (context) => StoreMedicalRecordsScreen(),
        '/medical-bills': (context) => MedicalBillsScreens(),
        '/screenings': (context) => Screenings(),
        '/doctors-notes': (context) => MedicalSummaries()
      },
    );
  }
}

/*
ThemeData(
          primaryColor: Colors.yellow[800],
          accentColor: Colors.pink[600],
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ))*/