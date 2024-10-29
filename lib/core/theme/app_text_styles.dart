
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

  static  TextStyle font16CoolGreyMedium =  TextStyle(
    fontSize: 16.sp ,
    fontWeight: FontWeightHelper.medium,
    color: ColorManager.coolGrey ,
    fontFamily: FontFamilyHelper.brandonGrotesqueFont,
  );
  static  TextStyle font20GrayXRegular =  TextStyle(
    fontSize: 20.sp ,
    fontWeight:FontWeightHelper.regular ,
    color: ColorManager.grayX ,
    fontFamily: FontFamilyHelper.brandonGrotesqueFont,
  );

  static  TextStyle font16BlackSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold ,
    color: Colors.black,
    fontFamily: FontFamilyHelper.brandonGrotesqueFont,
  );

  static  TextStyle font16OrangeSemiBold =  TextStyle(
    fontSize: 16.sp ,
    fontWeight: FontWeightHelper.semiBold ,
    color: ColorManager.mainOrange ,
    fontFamily: FontFamilyHelper.brandonGrotesqueFont,
  );
}

