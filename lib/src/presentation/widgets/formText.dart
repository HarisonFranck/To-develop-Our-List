import 'package:flutter/material.dart';

class FormText extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String placehodler;
  final Color borderColor;
  final Color formColor;
  final Color colorBorder;
  final Icon formIcon;

  final BorderRadius borderRadius;
  final TextInputType inputType;
  const FormText(
      {super.key,
      required this.controller,
      required this.placehodler,
      required this.borderColor,
      required this.formColor,
      required this.formIcon,
      required this.colorBorder,
      required this.inputType,
      required this.borderRadius,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      validator: (value) {
        if (value == null && value == "") {}
      },
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder),
          borderRadius: borderRadius,
        ),
        labelText: title,
        hintText: placehodler,
        fillColor: formColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder),
          borderRadius: borderRadius,
        ),
        icon: formIcon,
      ),
    );
  }
}
