import 'package:flutter/material.dart';

class TextBoldT1Positionned extends StatelessWidget {
  final String text;
  final Color textColor;
  final AlignmentGeometry alignement;

  const TextBoldT1Positionned(
      {super.key,
      required this.text,
      required this.textColor,
      required this.alignement});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: alignement,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
              color: textColor),
        ));
  }
}
