import 'package:flutter/material.dart';
import 'package:textinput_builder/src/app/config/app_colors.dart';
import 'package:textinput_builder/src/app/config/app_text_styles.dart';

class IconTooltip extends StatelessWidget {
  const IconTooltip({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      verticalOffset: 11,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: const EdgeInsets.only(right: 14),
      preferBelow: false,
      textStyle: AppTextStyles.regular12White,
      decoration: BoxDecoration(
        color: AppColors.gray200,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Icon(
        Icons.help_rounded,
        color: AppColors.gray200,
        size: 14,
      ),
    );
  }
}
