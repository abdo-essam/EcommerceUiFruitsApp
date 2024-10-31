import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';

class TrackOrderStatusItem extends StatelessWidget {
  const TrackOrderStatusItem(
      {super.key,
      this.color,
      this.title,
      this.subTitle,
      this.imagePath,
      this.endSvgPath,
      this.width,
      this.height});

  final Color? color;
  final String? title;

  final String? subTitle;

  final String? imagePath;

  final String? endSvgPath;

  final double? width;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color ?? ColorManager.cosmicLatte),
          child: Center(
            child: Image.asset(
              imagePath ?? 'assets/images/order_taken.png',
              width: 48.w,
              height: 43.h,
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? 'Order Taken',
              style: AppTextStyles.font16BlackMedium,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              subTitle ?? '',
              style: AppTextStyles.font14BlackRegular,
            )
          ],
        ),
        const Spacer(),
        SvgPicture.asset(
          endSvgPath ?? 'assets/svg/correct.svg',
          width: width ?? 24.w,
          height: height ?? 24.h,
        ),
      ],
    );
  }
}
