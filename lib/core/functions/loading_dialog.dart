import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

void loadingDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 1.5,
        backgroundColor: Colors.white,
        child: Container(
          width: 400.w,
          height: 300.h,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(15, 15),
                    blurRadius: 3),
              ]),
          child: Center(
            child: Lottie.asset('assets/lottie/loading.json', width: 250.w, height: 250.h ),
          ),
        ),
      ));
}