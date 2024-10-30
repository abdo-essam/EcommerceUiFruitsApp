import 'package:ecommerce_ui_fruits_app/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class FruitItemLoading extends StatelessWidget {
  const FruitItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: ColorManager.grayX,
        highlightColor: ColorManager.coolGrey,
        child: Container(
          width: 152.w,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: ColorManager.coolGrey),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 20.w,
                    height: 20.h,
                    color: ColorManager.coolGrey,
                  ),
                ],
              ),
              const CircleAvatar(
                backgroundColor: ColorManager.coolGrey,
                radius: 50,
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 10.h,
                width: 50.w,
                color: ColorManager.coolGrey,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 5.h,
                    width: 30.w,
                    color: ColorManager.coolGrey,
                  ),
                  const CircleAvatar(
                    backgroundColor: ColorManager.coolGrey,
                    radius: 20,
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
