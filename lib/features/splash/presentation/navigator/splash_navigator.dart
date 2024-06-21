import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe/features/auth/presentation/navigator/login_navigator.dart';
// import 'package:recipe/features/auth/presentation/navigator/login_navigator.dart';

final splashViewNavigatorProvider =
    Provider<SplashViewNavigator>((ref) => SplashViewNavigator());

// This class will be used to navigate to LoginView
class SplashViewNavigator with LoginViewRoute {
  void openLoginView() {}
}

mixin SplashViewRoute {}
