import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';


class ComboDescription extends StatelessWidget {
  const ComboDescription({super.key, required this.description});

  final String description ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 190.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'One Pack Contains:' ,
                style: AppTextStyles.font20NavyBlueMedium,
              ),
              Container(
                width: double.infinity,
                height: 2.h,
                color: ColorManager.mainOrange,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          description,
          style: AppTextStyles.font16NavyBlueMedium,
        ),
      ],
    );
  }
}