import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText, errorText;
  final IconData suffixIcon;
  final int? maxLength;
  final TextInputType textInputType;

  const AppTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.errorText,
      required this.suffixIcon,
      this.maxLength,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      smartDashesType: SmartDashesType.enabled,
      maxLength: maxLength,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        hintText: hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return errorText;
        }
        return null;
      },
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
    );
  }
}
