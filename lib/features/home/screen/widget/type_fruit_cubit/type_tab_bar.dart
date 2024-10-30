import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/color_manager.dart';
import '../../../manager/type_fruit_cubit/home_type_fruit_cubit.dart';

class TypeTabBar extends StatefulWidget {
  const TypeTabBar({super.key});

  @override
  State<TypeTabBar> createState() => _TypeTabBarState();
}

class _TypeTabBarState extends State<TypeTabBar> {
  var cubit;

  final List titles = ['Hottest', 'Popular', 'New Combo', 'Top'];
  int selectedIndex = 0;

  @override
  void initState() {
    cubit = HomeTypeFruitCubit.get(context)
        .getFruitDataUingType(titles[selectedIndex]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: titles.length,
        child: TabBar(
          tabs: titles.map((title) => Text(title)).toList(),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              cubit.getFruitDataUingType(titles[index]);
            });
          },
          isScrollable: true,
          labelStyle: AppTextStyles.font24NavyBlueMedium,
          dividerHeight: 0.h,
          unselectedLabelStyle: AppTextStyles.font16CoolGreyMedium,
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                  color: ColorManager.mainOrange ,
                  width: 2.w
              ),
              insets: EdgeInsetsDirectional.only(end: 28.w)
          ),
        ));
  }
}
