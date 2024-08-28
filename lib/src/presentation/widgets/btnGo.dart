import 'package:flutter/material.dart';

class BtnGo extends StatelessWidget {
  BtnGo(
      {super.key,
      required this.onPress,
      required this.textButton,
      required this.btnColor,
      required this.btnPadding,
      required this.btnFixedSize,
      required this.btnTextStyle,
      required this.btnBorder,
      this.btnICon});

  Icon? btnICon;
  final Size btnFixedSize;
  final String textButton;
  final Color btnColor;
  final EdgeInsetsGeometry btnPadding;
  final TextStyle btnTextStyle;
  final OutlinedBorder btnBorder;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    if (btnICon != null) {
      return Container(
          width: 270,
          height: 80,
          decoration: BoxDecoration(
              color: btnColor, borderRadius: BorderRadius.circular(15)),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: onPress,
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all(btnBorder),
                    backgroundColor: MaterialStateProperty.all(btnColor),
                    padding: MaterialStateProperty.all(btnPadding),
                    fixedSize: MaterialStateProperty.all(btnFixedSize)),
                child: Text(
                  textButton,
                  style: btnTextStyle,
                ),
              ),
              btnICon!,
            ],
          ));
    } else {
      return ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(btnBorder),
            backgroundColor: MaterialStateProperty.all(btnColor),
            padding: MaterialStateProperty.all(btnPadding),
            fixedSize: MaterialStateProperty.all(btnFixedSize)),
        child: Text(
          textButton,
          style: btnTextStyle,
        ),
      );
    }
  }
}
