import 'package:flutter/material.dart';

import '../widgets/order_complete_body.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderCompleteBody(),
    );
  }
}
