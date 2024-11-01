import 'package:ecommerce_ui_fruits_app/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:ecommerce_ui_fruits_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/widgets/button/custom_circle_button.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        decoration: BoxDecoration(
            color: widget.fruitComboModel.color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 4,
            )]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomCircleButton(
                    icon:
                        isFav ? Icons.favorite : Icons.favorite_border_outlined,
                    onPressed: () {
                      setState(() {
                        isFav = !isFav;
                      });
                    },
                    buttonSize: 24.sp,
                  ),
                ),
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
                  // plus button
                  CustomCircleButton(
                    onPressed: () {
                      // add item to basket
                    },
                    buttonSize: 24.sp,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
