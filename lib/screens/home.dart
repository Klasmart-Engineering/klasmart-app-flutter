import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kidsloop_app_flutter/screens/live_class.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KidsLoop"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Hello there"),
            TextButton(
              child: const Text("Webview"),
              onPressed: () {
                context.pushNamed(LiveClassScreen.routeName);
              },
            ),
            const Text("General Kenobi"),
          ],
        ),
      ),
    );
  }
}
