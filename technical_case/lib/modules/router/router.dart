import 'package:flutter/material.dart';
import 'package:technical_case/modules/login_module/widgets/login_widget.dart';
import 'package:technical_case/modules/router/routes.dart';
import 'package:technical_case/modules/widgets/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashScreenRoute:
      return MaterialPageRoute(
          builder: (context) => const SplashScreenWidget());
    case loginScreenRoute:
      return MaterialPageRoute(builder: (context) => const LoginPageWidget());
    default:
      return MaterialPageRoute(
          builder: (context) => const SplashScreenWidget());
  }
}
