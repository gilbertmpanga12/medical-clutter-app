import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicalImagesScreen extends StatefulWidget {
  @override
  _MedicalImagesScreenState createState() => _MedicalImagesScreenState();
}

class _MedicalImagesScreenState extends State<MedicalImagesScreen> {
  var _defaultTextColor = Color(0xff1F2937);
  List<String> images = [
    "https://www.itnonline.com/sites/default/files/GettyImages-182344111.jpg",
    "https://firebasestorage.googleapis.com/v0/b/lasereyes-llc.appspot.com/o/folder2.jpg?alt=media&token=9e400172-5b4b-4ca5-acbe-a7d6105eff82",
    "https://firebasestorage.googleapis.com/v0/b/lasereyes-llc.appspot.com/o/folder2.jpg?alt=media&token=9e400172-5b4b-4ca5-acbe-a7d6105eff82",
    "https://firebasestorage.googleapis.com/v0/b/lasereyes-llc.appspot.com/o/folder2.jpg?alt=media&token=9e400172-5b4b-4ca5-acbe-a7d6105eff82",
    "https://firebasestorage.googleapis.com/v0/b/lasereyes-llc.appspot.com/o/folder2.jpg?alt=media&token=9e400172-5b4b-4ca5-acbe-a7d6105eff82",
    "https://firebasestorage.googleapis.com/v0/b/lasereyes-llc.appspot.com/o/folder2.jpg?alt=media&token=9e400172-5b4b-4ca5-acbe-a7d6105eff82",
    "https://firebasestorage.googleapis.com/v0/b/lasereyes-llc.appspot.com/o/folder2.jpg?alt=media&token=9e400172-5b4b-4ca5-acbe-a7d6105eff82",
    "https://firebasestorage.googleapis.com/v0/b/lasereyes-llc.appspot.com/o/folder2.jpg?alt=media&token=9e400172-5b4b-4ca5-acbe-a7d6105eff82",
    "https://firebasestorage.googleapis.com/v0/b/lasereyes-llc.appspot.com/o/folder2.jpg?alt=media&token=9e400172-5b4b-4ca5-acbe-a7d6105eff82"
  ];

  GridView imageMedicalDocuments(List<String> images) => GridView.builder(
      itemCount: images.length,
      padding: const EdgeInsets.all(8),
      // childAspectRatio: 1,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1),
      itemBuilder: (BuildContext context, int i) => GridTile(
            footer: Material(
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
              ),
              clipBehavior: Clip.antiAlias,
              child: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text('CT Scan'),
                subtitle: Text('Heart Failure'),
              ),
            ),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                images[i],
                fit: BoxFit.cover,
              ),
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return imageMedicalDocuments(images);
  }
}
