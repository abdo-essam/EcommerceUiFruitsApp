import '../../../../core/models/basket_order_model/basket_order_model.dart';

abstract class MyBasketState {}

class MyBasketInitial extends MyBasketState {}

class MyBasketGetBasketOrdersLoading extends MyBasketState {}

class MyBasketGetBasketOrdersSuccess extends MyBasketState {
  final List<BasketOrderModel> basketOrderModel;
  final int totalOrderPrice;

  MyBasketGetBasketOrdersSuccess({
    required this.basketOrderModel,
    required this.totalOrderPrice,
  });
}

class MyBasketGetBasketOrdersFailed extends MyBasketState {
  final String error;

  MyBasketGetBasketOrdersFailed({required this.error});
}

class MyBasketDeleteBasketOrdersLoading extends MyBasketState {}

class MyBasketDeleteBasketOrdersSuccess extends MyBasketState {}

class MyBasketDeleteBasketOrdersFailed extends MyBasketState {
  final String error;

  MyBasketDeleteBasketOrdersFailed({required this.error});
}
