import 'package:ecommerce_ui_fruits_app/core/widgets/get_error_message.dart';
import 'package:ecommerce_ui_fruits_app/features/home/manager/all_fruit_cubit/home_all_fruit_cubit.dart';
import 'package:ecommerce_ui_fruits_app/features/home/manager/all_fruit_cubit/home_all_fruit_state.dart';
import 'package:ecommerce_ui_fruits_app/features/home/screen/widget/loading/fruit_items_loading_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../fruits_items/fruits_combo_items_list_view.dart';

class RecommendedFruitsCombListBlocBuilder extends StatelessWidget {
  const RecommendedFruitsCombListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeAllFruitCubit, HomeAllFruitState>(
        builder: (context, state) {
      if (state is HomeLoadingGetAllFruits) {
        return const FruitItemsLoadingListView();
      } else if (state is HomeGetAllFruitsCombo) {
        return getFruitsList(state.fruitsCombo);
      } else if (state is HomeSearchFruitComboUsingName) {
        if (state.fruitsCombo.isNotEmpty) {
          return getFruitsList(state.fruitsCombo);
        } else {
          return getError('No data found');
        }
      } else if (state is HomeFruitsComboError) {
        return getError(state.error);
      } else {
        return const SizedBox.shrink();
      }
    });
  }

  Widget getFruitsList(fruitsModel) {
    return FruitsComboItemsListView(fruitsModel: fruitsModel);
  }
}
