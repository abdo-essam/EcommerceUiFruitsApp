import 'package:ecommerce_ui_fruits_app/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/screen/ui/authentication_screen.dart';
import '../../features/splash/screen/ui/splash_screen.dart';
import '../../features/welcome/screen/ui/welcome_screen.dart';

class AppRouting {
  Route? generateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case Routes.authenticationScreen:
        return MaterialPageRoute(builder: (_) => const AuthenticationScreen());
    }
  }
}
