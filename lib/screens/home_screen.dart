import 'package:clutter/screens/profiles_screen.dart';
import 'package:clutter/screens/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  var items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: const Icon(
        CupertinoIcons.home,
      ),
      label: "Services",
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.account_circle),
      label: "Settings",
    )
  ];

  @override
  Widget build(BuildContext context) {
    const _defaultTextColor = Color(0xff1F2937);
    Widget toggleViews(BuildContext context) {
      switch (_currentIndex) {
        case 0:
          return DashboardScreen();
        case 1:
          return ProfileScreen();
      }
      return SignInScreen();
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        title: Text(
          'Medical Clutter',
          style: GoogleFonts.pacifico(
            textStyle: TextStyle(
                color: _defaultTextColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: toggleViews(context),
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
            enableFeedback: true,
            elevation: 0,
            iconSize: 19.5,
            showUnselectedLabels: true,
            items: items,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Color(0xff111827),
            unselectedItemColor: Color(0xff9CA3AF),
            backgroundColor: Color(0xffFFFFFF)), //F9FAFB
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Color(0xffeeeeee), width: 1.1))),
      ),
    );
  }

  @override
  void dispose() {
    _currentIndex = 1;
    super.dispose();
  }
}
