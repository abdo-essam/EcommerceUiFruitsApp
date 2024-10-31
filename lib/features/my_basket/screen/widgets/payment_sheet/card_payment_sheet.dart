import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/color_manager.dart';
import '../../../../../core/widgets/button/custom_elevated_button.dart';
import '../../../../../core/widgets/text_field/custom_text_form_field.dart';

class CardPaymentSheet extends StatelessWidget {
  const CardPaymentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(onClosing: () {
      Navigator.of(context).pop();
    }, builder: (context) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Holders Name',
                    style: AppTextStyles.font20NavyBlueMedium,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    fillBackgroundColor: ColorManager.flashWhite,
                    hintText: 'Adolphus Chris',
                    hintStyle: AppTextStyles.font20GrayXRegular,
                    validator: (value) {},
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    'Card Number',
                    style: AppTextStyles.font20NavyBlueMedium,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    fillBackgroundColor: ColorManager.flashWhite,
                    hintText: '1234 5678 9012 1314',
                    hintStyle: AppTextStyles.font20GrayXRegular,
                    validator: (value) {},
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Date',
                              style: AppTextStyles.font20NavyBlueMedium,
                            ),
                            SizedBox(
                              height: 26.h,
                            ),
                            CustomTextFormField(
                              fillBackgroundColor: ColorManager.flashWhite,
                              hintText: '10/30',
                              hintStyle: AppTextStyles.font20GrayXRegular,
                              validator: (value) {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 26.h,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CCV',
                              style: AppTextStyles.font20NavyBlueMedium,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            CustomTextFormField(
                              fillBackgroundColor: ColorManager.flashWhite,
                              hintText: '123',
                              hintStyle: AppTextStyles.font20GrayXRegular,
                              validator: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 100.w),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: ColorManager.mainOrange,
              ),
              child: Center(
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.orderCompleteScreen);
                  },
                  textButton: 'Complete Order',
                  styleTextButton: AppTextStyles.font16OrangeMedium,
                  backgroundColor: Colors.white,
                  radius: 10,
                  paddingButton: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
