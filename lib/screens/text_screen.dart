import 'package:clutter/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextScreen extends StatefulWidget {
  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  var _defaultTextColor = Color(0xff1F2937);
  var _indicatorColor = Color(0xff111827);
  late List<MedicalText> medicalTextDocuments;
  List<MedicalText> getMedicalTextDocuments() {
    return [
      MedicalText("CT scan", "Feb-22-2021 CT scan at St Hopkins", "2030-11-11"),
      MedicalText("MRI scan", "Feb-22-2021 at Mayo Clinic", "2050-11-11"),
      MedicalText(
          "Full blood count", "Feb-22-2021 at HoodWich Int", "2030-11-11"),
      MedicalText("Dentist visit",
          "Feb-22-2021 dental surgery at George Holdana", "2030-11-11"),
      MedicalText("Endoscopy", "Feb-22-2021 at Howdy Int", "2030-11-11"),
      MedicalText("Hear Attack Screening",
          "Feb-22-2021 at Robert Holski Hospital", "2030-11-11")
    ];
  }

  @override
  void initState() {
    medicalTextDocuments = getMedicalTextDocuments();
    super.initState();
  }

  Widget generateMedicalTextReports(List<MedicalText> payload) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: payload.length,
        itemBuilder: (BuildContext context, int i) {
          return makeCard(payload[i]);
        });
  }

  Card makeCard(MedicalText document) => Card(
        elevation: 1,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          // decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: makeListTile(document),
        ),
      );

  ListTile makeListTile(MedicalText document) => ListTile(
        dense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        title: Text(
          document.title,
          style: GoogleFonts.montserrat(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 19,
              fontWeight: FontWeight.w700,
              color: _defaultTextColor),
        ),
        subtitle: Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                  padding: EdgeInsets.only(left: 0.0, top: 5.0),
                  child: Text(document.description,
                      style:
                          TextStyle(color: _indicatorColor, fontSize: 15.0))),
            )
          ],
        ),
        trailing: Icon(Icons.keyboard_arrow_right,
            color: Color(0xff4B5563), size: 30.0),
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => DetailPage()));
        },
      );
  @override
  Widget build(BuildContext context) {
    return generateMedicalTextReports(medicalTextDocuments);
  }
}
