import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/go_back_button.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 20.r),
          child: const GoBackButton(),
        ),
        //FruitsComboDetailsBlocBuilder()
      ],
    ));
  }
}
