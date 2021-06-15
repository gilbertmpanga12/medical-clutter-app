import 'package:clutter/screens/categories_screen.dart';
import 'package:clutter/screens/home_screen.dart';
import 'package:clutter/screens/sign_in_screen.dart';
import 'package:clutter/screens/sign_up_screen.dart';
import 'package:clutter/screens/storerecords_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
