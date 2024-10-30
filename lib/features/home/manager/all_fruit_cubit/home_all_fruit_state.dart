import '../../../../core/models/fruits_combo_model/fruit_combo_model.dart';

abstract class HomeAllFruitState {}

class HomeAllFruitInitial extends HomeAllFruitState {}

class HomeLoadingGetAllFruits extends HomeAllFruitState {}

class HomeInsertFruitsCombo extends HomeAllFruitState {}

class HomeGetAllFruitsCombo extends HomeAllFruitState {
  final List<FruitComboModel> fruitsCombo;

  HomeGetAllFruitsCombo({required this.fruitsCombo});
}

class HomeSearchFruitComboUsingName extends HomeAllFruitState {
  final List<FruitComboModel> fruitsCombo;
  HomeSearchFruitComboUsingName({required this.fruitsCombo});
}

class HomeFruitsComboError extends HomeAllFruitState {
  final String error;
  HomeFruitsComboError({required this.error});
}



