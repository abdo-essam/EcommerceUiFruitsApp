import 'package:ecommerce_ui_fruits_app/core/helper/constants/constants.dart';
import 'package:ecommerce_ui_fruits_app/core/helper/local_database/ecommerce_database.dart';
import 'package:ecommerce_ui_fruits_app/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:ecommerce_ui_fruits_app/features/home/manager/all_fruit_cubit/home_all_fruit_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAllFruitCubit extends Cubit<HomeAllFruitState> {
  HomeAllFruitCubit() : super(HomeAllFruitInitial());
  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;
  TextEditingController textSearchFruitController = TextEditingController();

  static HomeAllFruitCubit get(context) => BlocProvider.of(context);

  Future<void> insertFruitsData() async {
    try {
      List<FruitComboModel> data = await ecommerceDatabase.getFruitsData();
      if (data.isNotEmpty) {
        emit(HomeGetAllFruitsCombo(fruitsCombo: data));
      } else {
        for (var fruit in Constants.fruitsData) {
          await ecommerceDatabase.insertInFruitsTable(fruit);
        }
        emit(HomeInsertFruitsCombo());
        await getAllFruitsData();
      }
    } catch (error) {
      emit(HomeFruitsComboError(error: "Failed to insert $error"));
    }
  }

  Future<void> getAllFruitsData() async{
    emit(HomeLoadingGetAllFruits());
    try{
      List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getFruitsData();
      emit(HomeGetAllFruitsCombo(fruitsCombo: fruitsCombo));

    }catch(error){
      emit(HomeFruitsComboError(error: "Failed to get data $error"));
    }
  }

  Future<void> searchFruit() async{
    emit(HomeLoadingGetAllFruits());
    try{
      List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getSearchFruits(textSearchFruitController.text);
      emit(HomeSearchFruitComboUsingName(fruitsCombo: fruitsCombo));
    }catch(error){
      emit(HomeFruitsComboError(error: "Failed to search data $error"));
    }
  }

}
