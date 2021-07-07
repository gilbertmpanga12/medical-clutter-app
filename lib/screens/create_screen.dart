import 'package:clutter/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateScreenDialog extends StatefulWidget {
  @override
  _CreateScreenDialogState createState() => _CreateScreenDialogState();
}

class _CreateScreenDialogState extends State<CreateScreenDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  MedicalDocument person = MedicalDocument();
  late FocusNode _fullName, _birthday, _notes, _picture;

  String _validateName(String value) {
    if (value.isEmpty) {
      return "Your legal name is required";
    }
    final nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value)) {
      return "Legal name should not include other any symbols or unknown characters";
    }
    return ""; // null
  }

  @override
  void initState() {
    super.initState();
    _fullName = FocusNode();
    _birthday = FocusNode();
    _notes = FocusNode();
    _picture = FocusNode();
  }

  @override
  void dispose() {
    _fullName.dispose();
    _birthday.dispose();
    _notes.dispose();
    _picture.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const _defaultTextColor = Color(0xff1F2937);
    const sizedBoxSpace = SizedBox(height: 24);
    return SafeArea(
        child: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('yes bitch');
          },
          label: Text('TAKE PHOTO',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              )),
          icon: Icon(Icons.camera),
          backgroundColor: Colors.pink,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          title: Text(
            'Store medical bill',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: _defaultTextColor, fontWeight: FontWeight.w400),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "SAVE",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: _defaultTextColor, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: Scrollbar(
            child: SingleChildScrollView(
              restorationId: 'text_field_demo_scroll_view',
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  sizedBoxSpace,
                  TextFormField(
                    focusNode: _fullName,
                    textInputAction: TextInputAction.next,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      filled: true,
                      icon: const Icon(Icons.person),
                      hintText: "John Doe",
                      labelText: "Your legal name",
                    ),
                    onSaved: (value) {
                      person.fullName = value!;
                      _fullName.requestFocus();
                    },
                    // validator: _validateName,
                  ),
                  sizedBoxSpace,
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    focusNode: _birthday,
                    decoration: InputDecoration(
                      filled: true,
                      icon: const Icon(Icons.date_range),
                      hintText: "Tap calendar to enter birth date",
                      labelText: "Birthday",
                      prefixText: '+1 ',
                    ),
                    keyboardType: TextInputType.datetime,
                    onSaved: (value) {
                      person.date = value!;
                      _birthday.requestFocus();
                    },
                    // validator: _validatePhoneNumber,
                    // TextInputFormatters are applied in sequence.
                  ),
                  sizedBoxSpace,
                  TextFormField(
                    onSaved: (value) {
                      person.notes = value!;
                      _notes.requestFocus();
                    },
                    focusNode: _notes,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "(Optional) add additional notes",
                      labelText: "Notes",
                    ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
