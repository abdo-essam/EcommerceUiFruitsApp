import 'package:ecommerce_ui_fruits_app/core/helper/local_database/ecommerce_database.dart';
import 'package:ecommerce_ui_fruits_app/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:ecommerce_ui_fruits_app/features/home/manager/type_fruit_cubit/home_type_fruit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTypeFruitCubit extends Cubit<HomeTypeFruitState> {
  HomeTypeFruitCubit() : super(HomeTypeFruitInitial());

  static HomeTypeFruitCubit get(context) => BlocProvider.of(context);
  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  Future<void> getFruitDataUingType(String type) async {
    emit(HomeTypeFruitLoading());
    try {
      List<FruitComboModel> fruits =
          await ecommerceDatabase.getFruitsByType(type);
      emit(HomeTypeFruitSuccess(fruitModel: fruits));
    } catch (error) {
      emit(HomeTypeFruitError(errorMessage: error.toString()));
    }
  }
}
