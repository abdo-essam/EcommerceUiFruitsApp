import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/get_error_message.dart';
import '../manager/my_basket_cubit.dart';
import '../manager/my_basket_state.dart';
import 'my_basket_fruit_list_view.dart';

class MyBasketOrdersBlocBuilder extends StatelessWidget {
  const MyBasketOrdersBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyBasketCubit, MyBasketState>(
      builder: (context, state) {
        if (state is MyBasketGetBasketOrdersLoading) {
          return const CircularProgressIndicator();
        } else if (state is MyBasketGetBasketOrdersSuccess) {
          return getOrders(state.basketOrderModel);
        } else if (state is MyBasketGetBasketOrdersFailed) {
          return getError(state.error);
        } else {
          return const SizedBox.shrink();
        }
      }, listener: (BuildContext context, MyBasketState state) {

    },
    );
  }

  Widget getOrders(basketOrderModel) {
    return MyBasketFruitListView(basketOrderModel: basketOrderModel);
  }
}
