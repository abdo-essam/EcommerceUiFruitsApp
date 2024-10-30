import 'package:ecommerce_ui_fruits_app/core/widgets/button/custom_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../manager/details_cubit.dart';

class CountAndPrice extends StatelessWidget {
  const CountAndPrice(
      {super.key, required this.price, required this.numOfOrder});

  final int price;

  final int numOfOrder;

  @override
  Widget build(BuildContext context) {
    var cubitCount = context.read<DetailsCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomCircleButton(
              onPressed: () {
                cubitCount.decrementCount();
              },
              backgroundColor: Colors.white,
              buttonSize: 32,
              boxBorder: Border.all(color: ColorManager.darkCharcoal),
              buttonRadius: 50,
              icon: Icons.minimize_outlined,
              iconColor: ColorManager.darkCharcoal,
              iconSize: 20,
              alignmentIcon: Alignment.topCenter,
            ),
            SizedBox(
              width: 24.w,
            ),
            Text(
              '$numOfOrder',
              style: AppTextStyles.font24NavyBlueMedium,
            ),
            SizedBox(
              width: 24.w,
            ),
            CustomCircleButton(
              backgroundColor: ColorManager.oldLace,
              onPressed: () {
                cubitCount.incrementCount();
              },
              buttonSize: 32.sp,
              buttonRadius: 50,
              iconSize: 20.sp,
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/money_icon_black.svg',
              width: 20.w,
              height: 16.h,
            ),
            Text(
              ' ${price*numOfOrder}',
              style: AppTextStyles.font24NavyBlueMedium,
            ),
          ],
        ),
      ],
    );
  }
}
