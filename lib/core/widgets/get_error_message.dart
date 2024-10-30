import 'package:ecommerce_ui_fruits_app/core/theme/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getError(String error) {
  return Center(
    child: Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      child: Center(
        child: Text(error, style: AppTextStyles.font16WhiteMedium,),
      ),
    ),
  );
}