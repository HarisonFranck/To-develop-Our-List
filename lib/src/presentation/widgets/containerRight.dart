import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContainerRight extends StatelessWidget {
  final Widget child;
  const ContainerRight({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
          left: (kIsWeb) ? width / 60 : 30,
          right: (kIsWeb) ? width / 60 : 0,
          top: 10,
          bottom: 60),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 54, 115, 150), width: 5),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      child: child,
    );
  }
}
