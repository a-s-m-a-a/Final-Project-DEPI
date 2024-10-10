import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,
    this.hintText,
    this.labelText,
    required this.controller,
    this.prefixIcon,
    this.customBorder,
    this.maxLines = 1,
    this.minLines,
    this.customHintStyle,
    this.enabledBorder,
    this.labelStyle,
    this.enabled = true,
    this.onTap,
  });
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final InputBorder? customBorder;
  final InputBorder? enabledBorder;
  final int? maxLines;
  final int? minLines;
  final TextStyle? customHintStyle;
  final TextStyle? labelStyle;
  final bool? enabled;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      onTapOutside: (event) {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      onTap: onTap,
      inputFormatters: inputFormatters,
      enabled: enabled,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle,
        hintText: hintText,
        hintStyle: customHintStyle ??
            const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        //

        enabledBorder: enabledBorder,
        border: customBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
      ),
    );
  }
}
