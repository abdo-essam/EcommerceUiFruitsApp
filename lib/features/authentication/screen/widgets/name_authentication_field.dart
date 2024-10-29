import 'package:ecommerce_ui_fruits_app/features/authentication/manager/authentication_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/button/custom_elevated_button.dart';
import '../../../../core/widgets/text_field/custom_text_form_field.dart';

class NameAuthenticationField extends StatelessWidget {
  const NameAuthenticationField({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AuthenticationCubit.get(context);
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What\'s your firstname ?',
              style: AppTextStyles.font20NavyBlueMedium,
            ),
            SizedBox(
              height: 23.h,
            ),
            Form(
                key: cubit.formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: cubit.namController,
                      fillBackgroundColor: ColorManager.cultured,
                      hintText: 'Name',
                      hintStyle: AppTextStyles.font20GrayXRegular,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Should enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 42.w,
                    ),
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton(
                          onPressed: () {
                            enterNameAndValidate(context);
                          },
                          radius: 10,
                          paddingButton: EdgeInsets.symmetric(
                            horizontal: 118.w,
                            vertical: 14.h,
                          ),
                          backgroundColor: ColorManager.mainOrange,
                          textButton: 'Start Order',
                          styleTextButton: AppTextStyles.font16WhiteMedium,
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    ));
  }

  void enterNameAndValidate(BuildContext context) {
    var cubit = AuthenticationCubit.get(context);
    if (cubit.formKey.currentState!.validate()) {
      cubit.emitInsert();
    }
  }
}
