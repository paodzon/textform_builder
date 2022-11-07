import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:textform_builder/src/app/config/app_colors.dart';
import 'package:textform_builder/src/app/config/app_text_styles.dart';
import 'package:textform_builder/src/widgets/tooltip.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField(
      {Key? key,
      required this.label,
      required this.placeholder,
      required this.controller,
      this.onChanged,
      this.tooltipText,
      this.sufficIcon,
      this.prefixIcon,
      this.minLines = 1,
      this.validator,
      this.isReadOnly = false,
      this.isObscure,
      this.inputFormatter,
      this.style,
      this.borderColor})
      : super(key: key);

  final String label;
  final String placeholder;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? tooltipText;
  final bool isReadOnly;
  final int? minLines;
  final Widget? sufficIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool? isObscure;
  final List<TextInputFormatter>? inputFormatter;
  final TextStyle? style;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isReadOnly ? .45 : 1,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  child: Text(
                    label,
                    style: AppTextStyles.regular14Black80,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              tooltipText != null
                  ? IconTooltip(
                      message: tooltipText as String,
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: double.infinity,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: placeholder,
                  hintStyle: AppTextStyles.light14Black64,
                  filled: true,
                  fillColor: Colors.white,
                  hoverColor: Colors.transparent,
                  contentPadding: const EdgeInsets.all(10),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: borderColor ?? AppColors.gray100),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: borderColor ?? AppColors.gray100),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.red800),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.red800),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  suffixIcon: sufficIcon,
                  prefixIcon: prefixIcon),
              style: isReadOnly
                  ? style ?? AppTextStyles.light14Black
                  : style ?? AppTextStyles.light14Black80,
              readOnly: isReadOnly,
              controller: controller,
              onChanged: onChanged,
              minLines: minLines,
              maxLines: minLines == 1 ? 1 : null,
              validator: validator,
              obscureText: isObscure ?? false,
              inputFormatters: inputFormatter,
            ),
          ),
        ],
      ),
    );
  }
}
