import 'package:ecommerce_ui_fruits_app/core/theme/app_text_styles.dart';
import 'package:ecommerce_ui_fruits_app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';

class HomeWelcomeMessage extends StatelessWidget {
  const HomeWelcomeMessage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'Hello $name, ',
            style: AppTextStyles.font20NavyBlueMedium,
            children: [
          TextSpan(
              text: 'What fruit salad \ncombo do you want today?',
              style: AppTextStyles.font20NavyBlueMedium
                  .copyWith(fontWeight: FontWeightHelper.bold))
        ]));
  }
}
