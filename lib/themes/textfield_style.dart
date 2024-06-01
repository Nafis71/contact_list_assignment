import 'package:flutter/material.dart';

import '../utils/colors.dart';

class TextFieldStyle {
  static InputDecorationTheme getTextFieldStyle() => InputDecorationTheme(
      suffixIconColor: appPrimaryColor,
      enabledBorder: TextFieldStyle.getOutlineBorder(isError: false),
      focusedBorder:
          TextFieldStyle.getOutlineBorder(isError: false, width: 2.2),
      errorBorder: TextFieldStyle.getOutlineBorder(isError: true),
      focusedErrorBorder: TextFieldStyle.getOutlineBorder(isError: true));

  static OutlineInputBorder getOutlineBorder(
      {required bool isError, double width = 1.5}) {
    if (isError) {
      return OutlineInputBorder(
        borderSide: BorderSide(color: redColor, width: width),
      );
    }
    return OutlineInputBorder(
        borderSide: BorderSide(color: appPrimaryColor, width: width));
  }
}
