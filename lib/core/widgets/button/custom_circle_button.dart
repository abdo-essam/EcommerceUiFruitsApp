import 'package:flutter/material.dart';

import '../../theme/color_manager.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton(
      {super.key,
      required this.onPressed,
      this.backgroundColor = ColorManager.oldLace,
      this.icon = Icons.add,
      this.iconColor = ColorManager.mainOrange,
      required this.buttonSize,
      this.buttonRadius = 24,
      this.boxBorder,
      this.iconSize = 24,  this.alignmentIcon = Alignment.center});

  final void Function() onPressed;
  final Color? backgroundColor;
  final IconData? icon;
  final Color? iconColor;
  final double buttonSize;
  final double buttonRadius;
  final BoxBorder? boxBorder;
  final double iconSize;
  final AlignmentGeometry alignmentIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(buttonRadius),
            color: backgroundColor,
            border: boxBorder),
        child: Align(
          alignment: alignmentIcon,
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
