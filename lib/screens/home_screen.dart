import 'package:clutter/screens/history_screen.dart';
import 'package:clutter/screens/profiles_screen.dart';
import 'package:clutter/screens/sign_in_screen.dart';
import 'package:clutter/screens/storerecords_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: const Icon(Icons.add_comment),
        label: 'History',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.calendar_today),
        label: 'Store Records',
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.account_circle),
        label: 'Profile',
      ),
    ];

    Widget toggleViews(BuildContext context) {
      switch (_currentIndex) {
        case 0:
          return HistoryScreen();
        case 1:
          return StoreMedicalRecordsScreen();
        case 2:
          return ProfileScreen();
      }
      return SignInScreen();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        automaticallyImplyLeading: false,
        title: Text(
          'Medical Clutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: toggleViews(context),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          items: bottomNavigationBarItems,
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 17.0,
          unselectedFontSize: 17.0,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.white,
          backgroundColor: Colors.purple[700]),
    );
  }
}
