import 'package:ecommerce_ui_fruits_app/features/home/manager/type_fruit_cubit/home_type_fruit_cubit.dart';
import 'package:ecommerce_ui_fruits_app/features/home/manager/type_fruit_cubit/home_type_fruit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/get_error_message.dart';
import '../fruits_items/fruits_combo_items_list_view.dart';
import '../loading/fruit_items_loading_list_view.dart';

class TypeFruitsComboListBlocBuilder extends StatelessWidget {
  const TypeFruitsComboListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTypeFruitCubit, HomeTypeFruitState>(
        builder: (context, state) {
      if (state is HomeTypeFruitLoading) {
        return const FruitItemsLoadingListView();
      } else if (state is HomeTypeFruitSuccess) {
        return getFruitsList(state.fruitModel);
      } else if (state is HomeTypeFruitError) {
        return getError(state.errorMessage);
      } else {
        return const SizedBox.shrink();
      }
    });
  }

  Widget getFruitsList(fruitsModel) {
    return FruitsComboItemsListView(fruitsModel: fruitsModel);
  }
}
