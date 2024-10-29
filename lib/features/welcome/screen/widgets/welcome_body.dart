import 'package:ecommerce_ui_fruits_app/features/welcome/screen/widgets/welcome_messages.dart';
import 'package:flutter/material.dart';

import 'orange_container_image.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          OrangeContainerImage(),
          WelcomeMessages(),
        ],
      ),
    );
  }
}
