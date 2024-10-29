import 'package:flutter/material.dart';

class AuthenticationBody extends StatefulWidget {
  const AuthenticationBody({super.key});

  @override
  State<AuthenticationBody> createState() => _AuthenticationBodyState();
}

class _AuthenticationBodyState extends State<AuthenticationBody> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Authentication Screen"),
    );
  }
}
