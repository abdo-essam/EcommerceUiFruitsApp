import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/models/basket_order_model/basket_order_model.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../manager/my_basket_cubit.dart';

class MyBasketFruitItem extends StatelessWidget {
  const MyBasketFruitItem(
      {super.key, required BasketOrderModel basketOrderModel})
      : basketOrderModel = basketOrderModel;

  final BasketOrderModel basketOrderModel;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(basketOrderModel.id),
      // Unique key for each item (use a unique field like id)
      direction: DismissDirection.endToStart,
      // Swipe direction
      background: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        color: Colors.red[300], // Background color when swiping
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 20.sp,
        ),
      ),
      onDismissed: (direction) {
        context.read<MyBasketCubit>().deleteOrderById(basketOrderModel.id!);
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.5.w, vertical: 10.5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorManager.lumber,
            ),
            child: Center(
              child: Image.asset(
                basketOrderModel.imagePath,
                width: 40.w,
                height: 40.h,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                basketOrderModel.name,
                style: AppTextStyles.font16BlackMedium,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                '${basketOrderModel.numOfOrder} packs',
                style: AppTextStyles.font14BlackRegular,
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svg/money_icon_black.svg',
                width: 16.w,
                height: 12.5.h,
              ),
              Text(
                ' ${basketOrderModel.totalPrice}',
                style: AppTextStyles.font16NavyBlueMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
