import 'package:flutter/material.dart';
import 'package:recipe/app/navigator_key/navigator_key.dart';
import 'package:recipe/features/splash/presentation/view/splash_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppNavigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
