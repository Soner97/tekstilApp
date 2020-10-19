import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tekstilcim/core/components/colors.dart';
import 'package:tekstilcim/core/components/context_extension.dart';

class ImageAreaWidget extends StatelessWidget {
  final simpleImageUrl =
      "https://simpleicon.com/wp-content/uploads/cloud-upload-2.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colorsx.mainColor,
      margin: context.paddingHigh,
      // padding: EdgeInsets.only(left: 60.0, top: 20.0),
      child: Column(
        children: [
          Container(
            height: context.dynamicHeight(0.1),
            width: context.dynamicWidth(0.3),
            child: Image.network(simpleImageUrl),
          ),
          Icon(Icons.cloud_upload, color: Colors.blueAccent, size: 40.0),
          Text(
            "Upload a photo",
            style: GoogleFonts.montserrat(
                color: Colors.blueAccent,
                fontSize: 13.0,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
