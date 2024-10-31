import 'package:ecommerce_ui_fruits_app/features/track_order/screen/widgets/track_order_status_item.dart';
import 'package:ecommerce_ui_fruits_app/features/track_order/screen/widgets/track_order_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/color_manager.dart';

class TrackOrderBody extends StatelessWidget {
  const TrackOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TrackOrderTopBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 40.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TrackOrderStatusItem(),
              Padding(
                padding: EdgeInsets.only(left: 32.w),
                child: SvgPicture.asset(
                  'assets/svg/line.svg',
                  height: 40.h,
                ),
              ),
              const TrackOrderStatusItem(
                imagePath: 'assets/images/order_prepare.png',
                color: ColorManager.antiFlashWhite,
                title: 'Order Is Being Prepared',
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.w),
                child: SvgPicture.asset(
                  'assets/svg/line.svg',
                  height: 40.h,
                ),
              ),
              TrackOrderStatusItem(
                imagePath: 'assets/images/order_delivered.png',
                color: ColorManager.lavenderBlush,
                title: 'Order Is Being Delivered',
                subTitle: 'Your delivery agent is coming',
                endSvgPath: 'assets/svg/calling.svg',
                width: 40.w,
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.w),
                child: SvgPicture.asset(
                  'assets/svg/line.svg',
                  height: 19.h,
                ),
              ),
              Image.asset(
                'assets/images/map.png',
                width: 327.w,
                height: 128.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.w),
                child: SvgPicture.asset(
                  'assets/svg/line.svg',
                  height: 40.h,
                ),
              ),
              TrackOrderStatusItem(
                imagePath: 'assets/images/correct.png',
                color: ColorManager.mintCream,
                title: 'Order Received',
                endSvgPath: 'assets/svg/circle_line.svg',
                width: 40.w,
                height: 8.h,
              ),
            ],
          ),
        )
      ],
    );
  }
}