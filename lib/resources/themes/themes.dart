import 'package:flutter/material.dart';
import 'package:shopify_clone/resources/themes/app_color_pallete.dart';

class AppTheme {
  // Create a static function for outline border
  static OutlineInputBorder _borderColor(Color color) => OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 3),
    borderRadius: BorderRadius.circular(10),
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(25),
      enabledBorder: _borderColor(Pallete.borderColor),
      focusedBorder: _borderColor(Pallete.gradient2),
    ),
  );
}
