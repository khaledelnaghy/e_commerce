import 'package:get/get_navigation/src/routes/get_route.dart';

import '../logic/bindings/auth_binding.dart';
import '../view/screens/auth/forget_password_screen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_screen.dart';
import '../view/screens/welecome_screen.dart';

class AppRoutes {
  static const welcome = Routes.welcomeScreen;

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () =>  LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () =>  SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgetPasswordScreen,
      page: () =>  ForgetPasswordScreen(),
      binding: AuthBinding(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = "/welcomeScreen";
  static const loginScreen = "/loginScreen";
  static const signUpScreen = "/signUpScreen";
  static const forgetPasswordScreen = "/forgetPasswordScreen";
}
