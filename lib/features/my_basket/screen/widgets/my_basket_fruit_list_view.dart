import 'package:ecommerce_ui_fruits_app/features/details/screen/widgets/gray_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/models/basket_order_model/basket_order_model.dart';
import 'my_basket_fruit_item.dart';

class MyBasketFruitListView extends StatelessWidget {
  const MyBasketFruitListView({super.key, required this.basketOrderModel});

  final List<BasketOrderModel> basketOrderModel;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: basketOrderModel.length,
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 22),
          child: GrayDivider(),
        ),
        itemBuilder: (context, index) {
          return MyBasketFruitItem(
            basketOrderModel: basketOrderModel[index],
          );
        });
  }
}