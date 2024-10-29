import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_text_styles.dart';
import '../../theme/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
    required this.hintText,
    this.hintStyle,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.fillBackgroundColor,
    this.border,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.obscureText,
    this.controller,
    required this.validator, this.keyboardType, this.onTap, this.maxLines, this.onChanged});

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillBackgroundColor;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final bool? obscureText;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final int? maxLines;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      controller: controller,
      onTap: onTap,
      onChanged: onChanged,
      validator: (value) {
        return validator(value);
      },
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ?? AppTextStyles.font16CoolGreyMedium,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
        filled: true,
        fillColor: fillBackgroundColor ?? const Color(0xffD0D0D0),
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(
                color: ColorManager.mainOrange,
              ),),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none),
        errorBorder: errorBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
