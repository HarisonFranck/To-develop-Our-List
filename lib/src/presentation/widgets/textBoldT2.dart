import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBoldT2 extends StatelessWidget {
  final String text;
  final Color textColor;
  const TextBoldT2({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.adventPro(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 2,
            color:
                textColor) /*TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          letterSpacing: 2,
          color: textColor),*/
        );
  }
}
