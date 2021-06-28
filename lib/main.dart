import 'package:clutter/screens/categories_screen.dart';
import 'package:clutter/screens/home_screen.dart';
import 'package:clutter/screens/sign_in_screen.dart';
import 'package:clutter/screens/sign_up_screen.dart';
import 'package:clutter/screens/storerecords_screen.dart';
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
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/signup': (context) => SignInScreen(),
        '/signin': (context) => SignUpScreen(),
        '/store-record': (context) => StoreMedicalRecordsScreen()
      },
    );
  }
}
