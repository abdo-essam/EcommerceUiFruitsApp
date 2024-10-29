import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/color_manager.dart';

class OrangeContainerImage extends StatelessWidget {
  const OrangeContainerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: ColorManager.mainOrange,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/welcome_screen_image.png',
                  width: 301.w,
                  height: 260.h,
                ),
                Positioned(
                  right: 0.r ,
                  child: Image.asset(
                    'assets/images/small_fruits.png',
                    width: 50.w,
                    height: 40.h,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SvgPicture.asset('assets/svg/shadow_welcome_screen_image.svg'),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
