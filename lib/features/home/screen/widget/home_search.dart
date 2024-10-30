import 'package:ecommerce_ui_fruits_app/core/widgets/text_field/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../manager/all_fruit_cubit/home_all_fruit_cubit.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = HomeAllFruitCubit.get(context);
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: CustomTextFormField(
            controller: cubit.textSearchFruitController,
            onChanged: (value) {
              cubit.searchFruit();
            },
            hintText: 'Search for fruit salad combos',
            validator: (value) {},
            prefixIcon: Icon(
              Icons.search,
              color: ColorManager.purpleNavy,
              size: 24.sp,
            ),
            hintStyle: AppTextStyles.font14RomanSilverRegular,
            fillBackgroundColor: ColorManager.cultured,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 20.h,
            ),
          ),
        ),
        Expanded(
          child: SvgPicture.asset(
            'assets/svg/filter_search_icon.svg',
            width: 26.w,
            height: 17.h,
          ),
        ),
      ],
    );
  }
}
