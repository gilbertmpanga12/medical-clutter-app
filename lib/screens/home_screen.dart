import 'package:clutter/screens/history_screen.dart';
import 'package:clutter/screens/profiles_screen.dart';
import 'package:clutter/screens/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_animation/bottom_animation.dart';
import 'dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  var items = <BottomNavItem>[
    BottomNavItem(title: 'Records', iconData: CupertinoIcons.folder),
    BottomNavItem(title: 'Services', iconData: Icons.medical_services),
    BottomNavItem(title: 'Setting', iconData: CupertinoIcons.profile_circled)
  ];

  @override
  Widget build(BuildContext context) {
    const _defaultTextColor = Color(0xff1F2937);

    Widget toggleViews(BuildContext context) {
      switch (_currentIndex) {
        case 0:
          return HistoryScreen();
        case 1:
          return DashboardScreen();
        case 2:
          return ProfileScreen();
      }
      return SignInScreen();
    }

    return Scaffold(
      // backgroundColor: const Color(0xffF9FAFB),
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
      bottomNavigationBar: BottomAnimation(
        selectedIndex: _currentIndex,
        items: items,
        backgroundColor: Colors.amberAccent,
        onItemSelect: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        itemHoverColor: Colors.white,
        itemHoverColorOpacity: .9,
        activeIconColor: Colors.blueGrey,
        deactiveIconColor: Colors.white.withOpacity(.9),
        barRadius: 40,
        textStyle: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        itemHoverWidth: 130,
        itemHoverBorderRadius: 40,
      ),
    );
  }

  @override
  void dispose() {
    _currentIndex = 1;
    super.dispose();
  }
}
