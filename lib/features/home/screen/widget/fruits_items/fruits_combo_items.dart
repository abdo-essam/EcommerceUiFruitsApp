import 'package:ecommerce_ui_fruits_app/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:ecommerce_ui_fruits_app/core/theme/app_text_styles.dart';
import 'package:ecommerce_ui_fruits_app/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/routes/routes.dart';

class FruitsComboItems extends StatefulWidget {
  const FruitsComboItems({super.key, required this.fruitComboModel});

  final FruitComboModel fruitComboModel;

  @override
  State<FruitsComboItems> createState() => _FruitsComboItemsState();
}

class _FruitsComboItemsState extends State<FruitsComboItems> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.detailsScreen,
            arguments: widget.fruitComboModel.id);
      },
      child: Container(
        width: 152.w,
        height: 183.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
            color: widget.fruitComboModel.color,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                  icon: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    color: ColorManager.mainOrange,
                    size: 20.sp,
                  ),
                )
              ],
            ),
            Image.asset(
              widget.fruitComboModel.imagePath,
              width: 80.w,
              height: 80.h,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              widget.fruitComboModel.fruitName,
              textAlign: TextAlign.center,
              style: AppTextStyles.font16NavyBlueMedium,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/money_icon.svg',
                        width: 14.w,
                        height: 12.8.h,
                      ),
                      Text(
                        ' ${widget.fruitComboModel.price}',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font14OrangeRegular,
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: ColorManager.oldLace),
                    child: Icon(
                      Icons.add,
                      size: 24.sp,
                      color: ColorManager.mainOrange,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
