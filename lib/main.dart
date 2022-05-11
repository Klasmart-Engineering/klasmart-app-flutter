import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kidsloop_app_flutter/screens/home.dart';
import 'package:kidsloop_app_flutter/screens/live_class.dart';
import 'package:kidsloop_app_flutter/screens/splash.dart';
import 'package:kidsloop_app_flutter/theme/theme_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    initialLocation: '/splash',
    routes: <GoRoute>[
      GoRoute(
        path: '/splash',
        name: SplashScreen.routeName,
        builder: (BuildContext context, GoRouterState state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/',
        name: HomeScreen.routeName,
        builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/live-class',
        name: LiveClassScreen.routeName,
        builder: (BuildContext context, GoRouterState state) => const LiveClassScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'KidsLoop',
      theme: buildLightThemeData(context),
      // darkTheme: buildDarkThemeData(context),
      themeMode: ThemeMode.dark,
    );
  }
}
