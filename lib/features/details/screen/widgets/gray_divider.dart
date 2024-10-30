import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/color_manager.dart';

class GrayDivider extends StatelessWidget {
  const GrayDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      width: double.infinity,
      color: ColorManager.antiFlashWhite,
    );
  }
}
