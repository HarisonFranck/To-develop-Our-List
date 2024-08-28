import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todevelopourlist/src/presentation/pages/animatedSplashScreen.dart';
import 'package:todevelopourlist/src/presentation/pages/homeScreen.dart';
import 'package:todevelopourlist/src/presentation/routes/goRoute.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(route: Routes().router));
}

class MyApp extends StatelessWidget {
  final GoRouter route;
  const MyApp({super.key, required this.route});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'To-develop-Our-list',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: route,
    );
  }
}
