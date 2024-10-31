import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/button/custom_elevated_button.dart';

class OrderCompleteBody extends StatelessWidget {
  const OrderCompleteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 58.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/correct.json',
              width: 164.w,
              height: 164.h,
            ),
            SizedBox(
              height: 56.h,
            ),
            Text(
              'Congratulations!!!',
              style: AppTextStyles.font32NavyBlueMedium,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Your order have been taken and is being attended to',
              textAlign: TextAlign.center,
              style: AppTextStyles.font20NavyBlueMedium,
            ),
            SizedBox(
              height: 56.h,
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(Routes.trackOrderScreen);
              },
              textButton: 'Track order',
              radius: 10,
              paddingButton:
                  EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
            ),
            SizedBox(
              height: 48.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(Routes.homeEcommerceScreen);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: ColorManager.mainOrange),
                ),
                child: Center(
                  child: Text(
                    'Continue shopping',
                    style: AppTextStyles.font16OrangeMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
