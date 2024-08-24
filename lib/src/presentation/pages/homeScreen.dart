import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todevelopourlist/core/config/app_config.dart';
import 'package:todevelopourlist/src/presentation/widgets/containerLeft.dart';
import 'package:todevelopourlist/src/presentation/widgets/containerRight.dart';
import 'package:todevelopourlist/src/presentation/widgets/textBoldT1.dart';
import 'package:todevelopourlist/src/presentation/widgets/textBoldT1Positionned.dart';
import 'package:todevelopourlist/src/presentation/widgets/textBoldT2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolling = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.isScrollingNotifier.value) {
        setState(() {
          _isScrolling = true;
        });
      } else {
        setState(() {
          _isScrolling = false;
        });
      }
    });

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true); // Répète l'animation en inversant

    _animation = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: (Platform.isAndroid) ? BoxFit.fitHeight : BoxFit.fitWidth,
                image: AssetImage((Platform.isAndroid)
                    ? '${AppConfig.baseAssetUrlImage}mobilefond.png'
                    : '${AppConfig.baseAssetUrlImage}webfond.png'))),
        width: width,
        height: height,
        child: Stack(
          children: [
            ListView(
              controller: _scrollController,
              children: const [
                ContainerRight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBoldT1(
                          text: "Bienvenue dans\n To-Develop-Our-List",
                          textColor: Colors.white),
                      SizedBox(
                        height: 20,
                        child: Divider(
                          thickness: 2,
                          color: Colors.white,
                        ),
                      ),
                      TextBoldT2(
                        text:
                            "Optimisez votre workflow :\nBoostez votre productivité avec une gestion intuitive.",
                        textColor: Color.fromARGB(255, 124, 180, 226),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                ContainerLeft(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBoldT1(
                        text:
                            "Simplifiez votre planning : Prioritizez vos tâches et atteignez vos objectifs.",
                        textColor: Color.fromARGB(255, 124, 180, 226),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextBoldT2(
                        text:
                            "Maîtrisez votre journée : Prioritizez, gérez, et accomplissez plus rapidement.",
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                ContainerRight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBoldT1(
                          text:
                              "Boostez votre productivité : Gérez vos tâches et projets en un seul endroit.",
                          textColor: Colors.white),
                      SizedBox(
                        height: 20,
                        child: Divider(
                          thickness: 2,
                          color: Colors.white,
                        ),
                      ),
                      TextBoldT2(
                        text:
                            "Transformez la façon dont vous travaillez : Une seule app pour tout gérer.",
                        textColor: Color.fromARGB(255, 124, 180, 226),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                ContainerLeft(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBoldT1(
                        text:
                            "Collaborer n'a jamais été aussi facile : Gérez vos équipes et vos projets sans effort.",
                        textColor: Color.fromARGB(255, 124, 180, 226),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextBoldT2(
                        text:
                            "Prenez le contrôle : Une gestion fluide de vos tâches, projets, et équipes.",
                        textColor: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 150,
                child: GestureDetector(
                  onTap: () {
                    print('STARTED...');
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    margin: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: (_isScrolling)
                                ? const Color.fromARGB(255, 20, 20, 20)
                                : Colors.transparent,
                            blurRadius: 3,
                          )
                        ],
                        border: Border.all(
                            width: 2,
                            color: (_isScrolling)
                                ? Colors.yellow
                                : Colors.transparent),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.3)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Get started',
                            style: TextStyle(
                                fontSize: 18,
                                color: (_isScrolling)
                                    ? Colors.yellow
                                    : Colors.white,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 2),
                          ),
                          FadeTransition(
                            opacity: _animation,
                            child: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
