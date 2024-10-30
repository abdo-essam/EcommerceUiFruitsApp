import 'package:ecommerce_ui_fruits_app/core/routes/routes.dart';
import 'package:ecommerce_ui_fruits_app/features/home/screen/ui/home_ecommerce_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/manager/authentication_cubit.dart';
import '../../features/authentication/screen/ui/authentication_screen.dart';
import '../../features/home/manager/all_fruit_cubit/home_all_fruit_cubit.dart';
import '../../features/home/manager/name_authentication_cubit/home_name_authentication_cubit.dart';
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
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthenticationCubit(),
                  child: const AuthenticationScreen(),
                ));
      case Routes.homeEcommerceScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                HomeNameAuthenticationCubit()..getName(),
              ),
              BlocProvider(
                create: (context) => HomeAllFruitCubit()..insertFruitsData(),
              ),
      /*        BlocProvider(
                create: (context) => HomeTypeFruitCubit(),
              ),*/
            ],
            child: const HomeEcommerceScreen(),
          ),
        );
    }
  }
}
