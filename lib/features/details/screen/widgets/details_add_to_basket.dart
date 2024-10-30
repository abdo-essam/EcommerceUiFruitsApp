import 'package:ecommerce_ui_fruits_app/core/widgets/button/custom_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/button/custom_elevated_button.dart';

class DetailsAddToBasket extends StatefulWidget {
  const DetailsAddToBasket(
      {super.key, required this.onPressed, this.backgroundColor});

  final void Function() onPressed;
  final Color? backgroundColor;

  @override
  State<DetailsAddToBasket> createState() => _DetailsAddToBasketState();
}

class _DetailsAddToBasketState extends State<DetailsAddToBasket> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleButton(
            buttonRadius: 50,
            backgroundColor: ColorManager.oldLace,
            icon: isFav ? Icons.favorite : Icons.favorite_border_outlined,
            onPressed: () {
              setState(() {
                isFav = !isFav;
              });
            },
            buttonSize: 48.sp),
        SizedBox(
          width: 60.w,
        ),
        CustomElevatedButton(
          onPressed: widget.onPressed,
          textButton: 'Add to basket',
          radius: 10,
          styleTextButton: AppTextStyles.font16WhiteMedium,
          backgroundColor: widget.backgroundColor ?? ColorManager.mainOrange,
          paddingButton: EdgeInsets.symmetric(horizontal: 60.w, vertical: 18.h),
        ),
      ],
    );
  }
}
