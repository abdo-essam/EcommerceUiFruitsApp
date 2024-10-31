import 'package:flutter/material.dart';

import '../widgets/track_order_body.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TrackOrderBody(),
    );
  }
}
