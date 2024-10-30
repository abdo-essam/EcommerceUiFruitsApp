import 'package:ecommerce_ui_fruits_app/core/routes/routes.dart';
import 'package:ecommerce_ui_fruits_app/core/theme/app_text_styles.dart';
import 'package:ecommerce_ui_fruits_app/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTobBar extends StatelessWidget {
  const HomeTobBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/svg/home_menu.svg',
          width: 22.w,
          height: 11.h,
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.myBasketScreen);
              },
              child:         SvgPicture.asset(
                'assets/svg/shopping_basket.svg',
                width: 24.w,
                height: 24.h,
              ),
            ),
            Text(
              'My Basket',
              style: AppTextStyles.font10NavyBlueRegular,
            )
          ],
        )
      ],
    );
  }
}
