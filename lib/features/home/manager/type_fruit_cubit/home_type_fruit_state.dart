
import 'package:ecommerce_ui_fruits_app/core/models/fruits_combo_model/fruit_combo_model.dart';

abstract class HomeTypeFruitState{}

class HomeTypeFruitInitial extends HomeTypeFruitState{}
class HomeTypeFruitLoading extends HomeTypeFruitState{}
class HomeTypeFruitSuccess extends HomeTypeFruitState{
  final List<FruitComboModel> fruitModel ;
  HomeTypeFruitSuccess({required this.fruitModel});
}
class HomeTypeFruitError extends HomeTypeFruitState{
  final String errorMessage;
  HomeTypeFruitError({required this.errorMessage});
}