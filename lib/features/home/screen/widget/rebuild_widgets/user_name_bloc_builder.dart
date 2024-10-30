import 'package:ecommerce_ui_fruits_app/features/home/manager/name_authentication_cubit/home_name_authentication_cubit.dart';
import 'package:ecommerce_ui_fruits_app/features/home/manager/name_authentication_cubit/home_name_authentication_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_welcome_message.dart';

class UserNameBlocBuilder extends StatelessWidget {
  const UserNameBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeNameAuthenticationCubit,
        HomeNameAuthenticationState>(builder: (context, state) {
      if (state is HomeNameAuthenticationSuccess) {
        return getName(state.name);
      } else if (state is HomeNameAuthenticationFailure) {
        return getName(state.error);
      } else {
        return getName('No Name');
      }
    });
  }

  Widget getName(String name) {
    return HomeWelcomeMessage(name: name);
  }
}
