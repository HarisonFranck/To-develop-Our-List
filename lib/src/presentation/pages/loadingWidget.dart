import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:todevelopourlist/core/config/app_config.dart';
import 'package:todevelopourlist/src/presentation/pages/animatedSplashScreen.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, required this.backWidget});
  final State backWidget;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print('width : $width , height: $height');
    return Stack(
      children: [
        backWidget.widget,
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Center(
            child: LottieBuilder.asset(
              '${AppConfig.baseAssetUrlAnimation}animation.json',
              width: 400,
            ),
          ),
        ),
        Center(
          child: Image.asset(
            '${AppConfig.baseAssetUrlImage}Logo.png',
            width: 130,
          ),
        )
      ],
    );
  }
}
