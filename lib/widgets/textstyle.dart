import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  CustomTextStyle({this.text, this.fontWeight, this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: GoogleFonts.oswald(
        textStyle: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
