import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/go_back_button.dart';
import 'fruits_combo_details_bloc_builder.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(18),
          child: Expanded(
            flex: 1,
            child: GoBackButton(),
          ),
        ),
        Expanded(flex: 28, child: FruitsComboDetailsBlocBuilder())
      ],
    ));
  }
}
