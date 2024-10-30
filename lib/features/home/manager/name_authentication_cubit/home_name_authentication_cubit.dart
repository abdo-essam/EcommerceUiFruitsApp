import 'package:ecommerce_ui_fruits_app/core/helper/local_database/ecommerce_database.dart';
import 'package:ecommerce_ui_fruits_app/features/home/manager/name_authentication_cubit/home_name_authentication_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeNameAuthenticationCubit extends Cubit<HomeNameAuthenticationState> {
  HomeNameAuthenticationCubit() : super(HomeNameAuthenticationInitial());

  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  Future<void> getName() async {
    emit(HomeNameAuthenticationLoading());
    try {
      String name = await ecommerceDatabase.getLastAuthenticationName();
      emit(HomeNameAuthenticationSuccess(name: name));
    } catch (error) {
      emit(HomeNameAuthenticationFailure(error: "No name : $error"));
    }
  }
}
