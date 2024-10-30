
import 'package:ecommerce_ui_fruits_app/core/theme/app_text_styles.dart';
import 'package:ecommerce_ui_fruits_app/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            Navigator.of(context).pop();
          },
      child: Container(
        width: 80.w,
        height: 32.h,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20.sp,
            ),
            Text(
              'Go back',
              style: AppTextStyles.font16NavyBlueRegular,
            ),
          ],
        ),
      ),
    );
  }
}
