import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/go_back_button.dart';

class TrackOrderTopBar extends StatelessWidget {
  const TrackOrderTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w ,
          vertical: 50.h,
        ),
        color: ColorManager.mainOrange,
        child:  Row(
          children: [
            GoBackButton(
              onTap: (){
                Navigator.of(context).pushReplacementNamed(Routes.homeEcommerceScreen);
              },
            ),
            SizedBox(
              width: 14.w,
            ),
            Text(
              'Delivery Status',
              style: AppTextStyles.font24WhiteMedium,
            ),
          ],
        )
    );
  }
}
