import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:todevelopourlist/core/config/app_config.dart';
import 'package:todevelopourlist/src/presentation/widgets/btnGo.dart';
import 'package:todevelopourlist/src/presentation/widgets/formText.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nomController = TextEditingController();
  TextEditingController prenomController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('${AppConfig.baseAssetUrlImage}fond.jpg'),
              fit: BoxFit.fitHeight)),
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('${AppConfig.baseAssetUrlImage}fond2.jpg'),
                  fit: (kIsWeb) ? BoxFit.fitWidth : BoxFit.fitHeight)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: (kIsWeb) ? height / 1.5 : height / 1.8,
                  padding: const EdgeInsets.all((kIsWeb) ? 100 : 20),
                  margin: EdgeInsets.only(
                    left: (kIsWeb) ? width / 5 : 40,
                    right: (kIsWeb) ? width / 5 : 40,
                    top: 60,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 4, 43, 102),
                          width: 4),
                      /*image: const DecorationImage(
                          image: AssetImage(
                              '${AppConfig.baseAssetUrlImage}fond2.jpg'),
                          fit: BoxFit.fitHeight),*/
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(blurRadius: 5, color: Colors.grey)
                      ]),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 4, 43, 102)),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: TextButton(
                                    onPressed: () {
                                      context.go('/Inscription');
                                    },
                                    child: const Text(
                                      "S'inscrire",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 2),
                                    ),
                                  )),
                              FormText(
                                  colorBorder:
                                      const Color.fromARGB(255, 54, 115, 150),
                                  controller: nomController,
                                  placehodler: '',
                                  borderColor:
                                      const Color.fromARGB(255, 54, 115, 150),
                                  formColor: Colors.white,
                                  formIcon: const Icon(Icons.person),
                                  inputType: TextInputType.name,
                                  borderRadius: BorderRadius.circular(10),
                                  title: 'Nom'),
                              const SizedBox(
                                height: 40,
                              ),
                              FormText(
                                  colorBorder:
                                      const Color.fromARGB(255, 54, 115, 150),
                                  controller: nomController,
                                  placehodler: '',
                                  borderColor:
                                      const Color.fromARGB(255, 54, 115, 150),
                                  formColor: Colors.white,
                                  formIcon: const Icon(Icons.password),
                                  inputType: TextInputType.name,
                                  borderRadius: BorderRadius.circular(10),
                                  title: 'Mot de passe'),
                              Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: TextButton(
                                    onPressed: () {
                                      print('MDP Lost');
                                      //context.go('/Inscription');
                                    },
                                    child: const Text(
                                      "Mot de passe oublié?",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 2),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: BtnGo(
                    btnICon: const Icon(
                      size: 30,
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPress: () {
                      print('GO GO');
                    },
                    textButton: "Se connecter",
                    btnColor: const Color.fromARGB(255, 4, 43, 102),
                    btnPadding: const EdgeInsets.only(
                        right: 20, left: 20, top: 10, bottom: 10),
                    btnFixedSize: const Size(200, 80),
                    btnTextStyle: const TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    btnBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      20,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
