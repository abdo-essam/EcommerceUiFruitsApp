import 'package:ecommerce_ui_fruits_app/features/home/screen/widget/fruits_items/fruits_combo_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/models/fruits_combo_model/fruit_combo_model.dart';

class FruitsComboItemsListView extends StatelessWidget {
  const FruitsComboItemsListView({super.key, required this.fruitsModel});

  final List<FruitComboModel> fruitsModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(end: 15.r),
            child: FruitsComboItems(fruitComboModel: fruitsModel[index]),
          );
        },
        itemCount: fruitsModel.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
