import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todevelopourlist/core/config/app_config.dart';
import 'package:todevelopourlist/src/presentation/widgets/btnGo.dart';
import 'package:todevelopourlist/src/presentation/widgets/formText.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
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
                  height: (kIsWeb) ? height / 1.25 : height / 1.3,
                  padding: const EdgeInsets.all((kIsWeb) ? 100 : 20),
                  margin: EdgeInsets.only(
                    left: (kIsWeb) ? width / 5 : 40,
                    right: (kIsWeb) ? width / 5 : 40,
                    top: 40,
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 4, 43, 102)),
                            child: Text('Inscription',
                                style: GoogleFonts.aboreto(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing:
                                        2) /*TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2),*/
                                ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: TextButton(
                                      onPressed: () {
                                        context.go('/Login');
                                      },
                                      child: const Text(
                                        "S'authentifier",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
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
                                  height: 20,
                                ),
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
                                    title: 'Prenom'),
                                const SizedBox(
                                  height: 20,
                                ),
                                FormText(
                                    colorBorder:
                                        const Color.fromARGB(255, 54, 115, 150),
                                    controller: ageController,
                                    placehodler: '',
                                    borderColor:
                                        const Color.fromARGB(255, 54, 115, 150),
                                    formColor: Colors.white,
                                    formIcon: const Icon(Icons.cake),
                                    inputType: TextInputType.number,
                                    borderRadius: BorderRadius.circular(10),
                                    title: 'Age'),
                                const SizedBox(
                                  height: 20,
                                ),
                                FormText(
                                    colorBorder:
                                        const Color.fromARGB(255, 54, 115, 150),
                                    controller: jobController,
                                    placehodler: '',
                                    borderColor:
                                        const Color.fromARGB(255, 54, 115, 150),
                                    formColor: Colors.white,
                                    formIcon: const Icon(Icons.work),
                                    inputType: TextInputType.name,
                                    borderRadius: BorderRadius.circular(10),
                                    title: 'Carrière'),
                                const SizedBox(
                                  height: 20,
                                ),
                                FormText(
                                    colorBorder:
                                        const Color.fromARGB(255, 54, 115, 150),
                                    controller: jobController,
                                    placehodler: '',
                                    borderColor:
                                        const Color.fromARGB(255, 54, 115, 150),
                                    formColor: Colors.white,
                                    formIcon: const Icon(Icons.password),
                                    inputType: TextInputType.name,
                                    borderRadius: BorderRadius.circular(10),
                                    title: 'Mot de passe'),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                    textButton: "Enregistrer",
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
