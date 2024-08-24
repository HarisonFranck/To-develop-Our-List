import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBoldT1 extends StatelessWidget {
  final String text;
  final Color textColor;
  const TextBoldT1({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.abel(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            color:
                textColor) /*TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
          color: textColor),*/
        );
  }
}
