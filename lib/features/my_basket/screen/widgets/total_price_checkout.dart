import 'package:ecommerce_ui_fruits_app/features/my_basket/screen/widgets/payment_sheet/payment_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/button/custom_elevated_button.dart';

class TotalPriceCheckout extends StatelessWidget {
  const TotalPriceCheckout({super.key, required this.totalPrice});

  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total',
                style: AppTextStyles.font16BlackMedium,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/money_icon_black.svg',
                    width: 20.w,
                    height: 16.h,
                  ),
                  Text(
                    ' $totalPrice',
                    style: AppTextStyles.font24NavyBlueMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: CustomElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context, builder: (context) => const PaymentSheet());
            },
            radius: 10,
            textButton: 'Checkout',
            paddingButton:
                EdgeInsets.symmetric(vertical: 14.h, horizontal: 52.w),
          ),
        )
      ],
    );
  }
}
