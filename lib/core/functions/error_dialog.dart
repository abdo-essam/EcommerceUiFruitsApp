
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../theme/app_text_styles.dart';
import '../theme/color_manager.dart';

void errorDialog(BuildContext context, String error) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 1.5,
      backgroundColor: Colors.white,
      child: Container(
        width: 400.w,
        height: 300.h,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(15, 15), blurRadius: 3),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/error.json', width: 200.w, height: 150.h),
             SizedBox(
              height: 15.h,
            ),
            Text(error, style: AppTextStyles.font16OrangeSemiBold),
             SizedBox(
              height: 15.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: ColorManager.coolGrey,
                    padding:  EdgeInsets.symmetric(
                      horizontal: 25.w,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child:
                       Text('Retry', style: AppTextStyles.font16OrangeSemiBold),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
