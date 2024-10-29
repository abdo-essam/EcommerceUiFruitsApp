import 'package:flutter/material.dart';

import 'authentication_bloc_listener.dart';
import 'name_authentication_field.dart';
import 'orange_container_authentication.dart';

class AuthenticationBody extends StatelessWidget {
  const AuthenticationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
          children: [
            OrangeContainerAuthentication(),
            NameAuthenticationField(),
            AuthenticationBlocListener()
          ],
        )
    );
  }
}
