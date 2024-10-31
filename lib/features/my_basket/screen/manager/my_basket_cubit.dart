import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/local_database/ecommerce_database.dart';
import '../../../../core/models/basket_order_model/basket_order_model.dart';
import 'my_basket_state.dart';

class MyBasketCubit extends Cubit<MyBasketState> {
  MyBasketCubit() : super(MyBasketInitial());

  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  Future<void> getAllBasketOrders() async{
    emit(MyBasketGetBasketOrdersLoading());
    try {
      List<BasketOrderModel> basketOrderModel =  await ecommerceDatabase.getBasketOrders();
      int totalOrderPrice = 0 ;
      for(var order in basketOrderModel){
        totalOrderPrice += order.totalPrice;
      }
      emit(MyBasketGetBasketOrdersSuccess(basketOrderModel: basketOrderModel, totalOrderPrice: totalOrderPrice));
    } catch (error) {
      emit(MyBasketGetBasketOrdersFailed(error: "Failed to get data ${error.toString()}"));
    }
  }

  Future<void> deleteOrderById(int id)async{
    emit(MyBasketDeleteBasketOrdersLoading());
    try {
      await ecommerceDatabase.deleteOrderById(id);
      emit(MyBasketDeleteBasketOrdersSuccess());
      await getAllBasketOrders();
    } catch (error) {
      emit(MyBasketDeleteBasketOrdersFailed(error: "Failed to delete order ${error.toString()}"));    }
  }
}