import '../../../core/models/fruits_combo_model/fruit_combo_model.dart';

abstract class DetailsState {}

class DetailsInitial extends DetailsState {}

class DetailsLoading extends DetailsState {}

class DetailsSuccess extends DetailsState {
  final FruitComboModel fruitComboModel;
  final int numOfOrder;

  DetailsSuccess({required this.fruitComboModel, required this.numOfOrder});
}

class DetailsFailure extends DetailsState {
  final String error;

  DetailsFailure({required this.error});
}

class DetailsInsertBasketOrderSuccess extends DetailsState {}

class DetailsInsertBasketOrderFailure extends DetailsState {
  final String error;

  DetailsInsertBasketOrderFailure({required this.error});
}

class DetailsInsertBasketLoading extends DetailsState {}
