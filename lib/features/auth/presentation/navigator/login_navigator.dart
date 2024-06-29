
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe/features/auth/presentation/navigator/register_navigator.dart';
import 'package:recipe/features/home/presentation/navigator/home_navigator.dart';
import 'package:recipe/features/home/presentation/view/home_view.dart';

import '../../../../app/navigator/navigator.dart';
import '../view/login_view.dart';

final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

class LoginViewNavigator with RegisterViewRoute,HomeViewRoute {
  void openHomeView() {}
}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }
  openHomeView(){
    NavigateRoute.popAndPushRoute(const HomeView());
  }
}

