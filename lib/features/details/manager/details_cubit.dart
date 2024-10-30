import 'package:ecommerce_ui_fruits_app/core/helper/local_database/ecommerce_database.dart';
import 'package:ecommerce_ui_fruits_app/features/details/manager/details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/models/fruits_combo_model/fruit_combo_model.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());
  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  int numberOfOrders = 1;

  FruitComboModel? currentFruitComboModel;

  Future<void> getFruitById(int id) async {
    emit(DetailsLoading());
    try {
      FruitComboModel fruitComboModel =
          await ecommerceDatabase.getFruitItemById(id);
      currentFruitComboModel = fruitComboModel;
      emit(DetailsSuccess(
          fruitComboModel: fruitComboModel, numOfOrder: numberOfOrders));
    } catch (error) {
      emit(DetailsFailure(error: "Error to fetch data ${error.toString()}"));
    }
  }

  void incrementCount() {
    if (currentFruitComboModel != null) {
      numberOfOrders++;
      emit(DetailsSuccess(
          fruitComboModel: currentFruitComboModel!,
          numOfOrder: numberOfOrders));
    }
  }

  void decrementCount() {
    if (numberOfOrders > 0 && currentFruitComboModel != null) {
      numberOfOrders--;
      emit(DetailsSuccess(
          fruitComboModel: currentFruitComboModel!,
          numOfOrder: numberOfOrders));
    }
  }

  Future<void> insertNewOrder({
    required String name,
    required String imagePath,
    required int numOfOrder,
    required int totalPrice,
  }) async {
    emit(DetailsInsertBasketOrderSuccess());
    try {
      await ecommerceDatabase.insertInBasketTable(
          name: name,
          imagePath: imagePath,
          numOfOrder: numOfOrder,
          totalPrice: totalPrice);
      emit(DetailsInsertBasketOrderSuccess());
    } catch (error) {
      emit(DetailsInsertBasketOrderFailure(
          error: "Error in insert data ${error.toString()}"));
    }
  }
}
