import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/button/custom_elevated_button.dart';

class WelcomeMessages extends StatelessWidget {
  const WelcomeMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child:  Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get The Freshest Fruits Salad Combo',
                style: AppTextStyles.font20NavyBlueMedium,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                style: AppTextStyles.font16PurpleNavyRegular,
              ),
              SizedBox(
                height: 58.h,
              ),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed(Routes.authenticationScreen);
                    },
                    radius: 10,
                    paddingButton:  EdgeInsets.symmetric(
                        horizontal: 110.w,
                        vertical: 14.h
                    ),
                    backgroundColor: ColorManager.mainOrange,
                    textButton: 'Let\'s Continue',
                    styleTextButton: AppTextStyles.font16WhiteMedium,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
