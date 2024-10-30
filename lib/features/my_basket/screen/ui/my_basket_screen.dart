import 'package:flutter/material.dart';

import '../widgets/my_basket_body.dart';

class MyBasketScreen extends StatelessWidget {
  const MyBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyBasketBody(),
    );
  }
}
