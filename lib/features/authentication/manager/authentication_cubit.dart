import 'package:ecommerce_ui_fruits_app/features/authentication/manager/authentication_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/local_database/ecommerce_database.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  static AuthenticationCubit get(context) => BlocProvider.of(context);

  TextEditingController namController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  void emitInsert() async {
    emit(AuthenticationLoading());
    try {
      await ecommerceDatabase.insertNameAuthentication(namController.text);
      emit(AuthenticationInsertNameSuccess());
    } catch (e) {
      emit(AuthenticationFailure(errorMessage: "Failed to insert name : $e"));
    }
  }



}
