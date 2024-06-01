import 'package:contact_list_assignment/utils/colors.dart';
import 'package:flutter/material.dart';

class AppbarStyle {
  static AppBarTheme getAppBarTheme() => const AppBarTheme(
      toolbarHeight: 80,
      backgroundColor: appPrimaryColor,
      foregroundColor: whiteColor,
      titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold));
}
