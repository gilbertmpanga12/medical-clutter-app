import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateScreenDialog extends StatefulWidget {
  @override
  _CreateScreenDialogState createState() => _CreateScreenDialogState();
}

class _CreateScreenDialogState extends State<CreateScreenDialog> {
  @override
  Widget build(BuildContext context) {
    const _defaultTextColor = Color(0xff1F2937);
    return SafeArea(
        child: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Store medical bill',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: _defaultTextColor, fontWeight: FontWeight.w500),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Shit",
              ),
            ),
          ],
        ),
        body: Center(
          child: Text(
            "Bitch",
          ),
        ),
      ),
    ));
  }
}
