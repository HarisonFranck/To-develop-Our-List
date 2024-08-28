import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:todevelopourlist/core/config/app_config.dart';
import 'package:todevelopourlist/src/presentation/pages/inscription.dart';
import 'package:todevelopourlist/src/presentation/pages/loadingWidget.dart';
import 'package:todevelopourlist/src/presentation/pages/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Délai avant la redirection vers la route '/Welcome'
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).go('/Welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 97, 126),
      body: Stack(
        alignment: Alignment.center,
        children: [
          LottieBuilder.asset(
            '${AppConfig.baseAssetUrlAnimation}animation.json',
            width: 400,
          ),
          Center(
            child: Image.asset(
              '${AppConfig.baseAssetUrlImage}Logo.png',
              width: 130,
            ),
          )
        ],
      ),
    );
  }
}
