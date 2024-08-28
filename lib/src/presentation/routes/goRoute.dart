import 'package:go_router/go_router.dart';
import 'package:todevelopourlist/src/presentation/pages/inscription.dart';
import 'package:todevelopourlist/src/presentation/pages/loadingWidget.dart';
import 'package:todevelopourlist/src/presentation/pages/animatedSplashScreen.dart';
import 'package:todevelopourlist/src/presentation/pages/homeScreen.dart';
import 'package:todevelopourlist/src/presentation/pages/login.dart';

class Routes {
  GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/Welcome',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/Inscription',
        builder: (context, state) => const Inscription(),
      ),
      GoRoute(
        path: '/Login',
        builder: (context, state) => const Login(),
      ),
    ],
  );
}
