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
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnaHq40GJ78gC2cZV7SUckabq1Kwr0qkBVl6Tm-S37u3J5ydB6J_WD7hxtX_JiH9bwcf8&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhaU6RzjbH4YwvXxlzRPcwxRavzctjIgoW_w&usqp=CAU",
    "https://www.itnonline.com/sites/default/files/GettyImages-182344111.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnaHq40GJ78gC2cZV7SUckabq1Kwr0qkBVl6Tm-S37u3J5ydB6J_WD7hxtX_JiH9bwcf8&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhaU6RzjbH4YwvXxlzRPcwxRavzctjIgoW_w&usqp=CAU"
  ];

  List<String> names = [
    'CT scan',
    'MRI',
    'Mamogram',
    'CT scan',
    'MRI',
    'Mamogram'
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
                title: Text(
                  names[i],
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                subtitle: Text('Feb 20th 2021'),
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
