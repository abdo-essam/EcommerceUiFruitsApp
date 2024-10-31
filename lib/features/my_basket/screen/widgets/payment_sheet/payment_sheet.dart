import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/color_manager.dart';
import '../../../../../core/widgets/text_field/custom_text_form_field.dart';
import 'card_payment_sheet.dart';

class PaymentSheet extends StatelessWidget {
  const PaymentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        backgroundColor: Colors.transparent,
        onClosing: () {
          Navigator.of(context).pop();
        },
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery address',
                    style: AppTextStyles.font20NavyBlueMedium,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    fillBackgroundColor: ColorManager.flashWhite,
                    hintText: '10th avenue, Lekki, Lagos State',
                    hintStyle: AppTextStyles.font20GrayXRegular,
                    validator: (value) {},
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Number we can call',
                    style: AppTextStyles.font20NavyBlueMedium,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                    fillBackgroundColor: ColorManager.flashWhite,
                    hintText: '09090605708',
                    hintStyle: AppTextStyles.font20GrayXRegular,
                    validator: (value) {},
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacementNamed(Routes.orderCompleteScreen);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 16.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: ColorManager.mainOrange),
                          ),
                          child: Center(
                            child: Text(
                              'Pay on delivery',
                              style: AppTextStyles.font16OrangeMedium,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop(); // Close the current bottom sheet
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true, // Allows the modal to take full height
                            builder: (context) => const CardPaymentSheet(),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 16.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: ColorManager.mainOrange),
                          ),
                          child: Center(
                            child: Text(
                              'Pay with card',
                              style: AppTextStyles.font16OrangeMedium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}