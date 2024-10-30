import 'package:ecommerce_ui_fruits_app/features/home/screen/widget/loading/fruit_item_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FruitItemsLoadingListView extends StatelessWidget {
  const FruitItemsLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(end: 12.r),
          child: const FruitItemLoading(),
        ),
      ),
    );
  }
}
