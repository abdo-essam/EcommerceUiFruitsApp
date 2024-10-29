
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';
import 'font_family_helper.dart';
import 'font_weight_helper.dart';

class AppTextStyles{
  static  TextStyle font20NavyBlueMedium =  TextStyle(
    fontSize: 20.sp ,
    fontWeight: FontWeightHelper.medium ,
    color: ColorManager.navyBlue ,
    fontFamily: FontFamilyHelper.brandonGrotesqueFont,
  );

  static  TextStyle font16PurpleNavyRegular =  TextStyle(
    fontSize: 16.sp ,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.purpleNavy ,
    fontFamily: FontFamilyHelper.brandonGrotesqueFont,
  );

  static  TextStyle font16WhiteMedium =  TextStyle(
    fontSize: 16.sp ,
    fontWeight: FontWeightHelper.medium ,
    color: Colors.white ,
    fontFamily: FontFamilyHelper.brandonGrotesqueFont,
  );
}

