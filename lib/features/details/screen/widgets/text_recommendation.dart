import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class TextRecommendation extends StatelessWidget {
  const TextRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you make',
      style: AppTextStyles.font14NavyBlueRegular,
    );
  }
}
