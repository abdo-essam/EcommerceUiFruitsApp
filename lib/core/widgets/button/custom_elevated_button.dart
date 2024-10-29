import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_text_styles.dart';
import '../../theme/color_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key,
    this.paddingButton,
    required this.onPressed,
    required this.textButton,
    this.styleTextButton,
    this.childButton,
    this.backgroundColor,
    this.horizontalPadding,
    this.radius});

  final EdgeInsetsGeometry? paddingButton;
  final void Function() onPressed;
  final String textButton;

  final TextStyle? styleTextButton;
  final Widget? childButton;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: paddingButton ??
              EdgeInsets.symmetric(
                  horizontal: horizontalPadding ?? 140.w, vertical: 14.h),
          backgroundColor: backgroundColor ??  ColorManager.mainOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 25),
          )),
      onPressed: onPressed,
      child: childButton ??
          Text(textButton ,
              textAlign: TextAlign.center,
              style: styleTextButton ?? AppTextStyles.font16WhiteMedium
          ),
    );
  }
}
