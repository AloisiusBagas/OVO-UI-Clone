import 'package:flutter/material.dart';
import 'package:ovo_ui/Constant/Color.dart';

TextTheme basetextTheme(TextTheme base) {
  return base.copyWith(
      titleLarge: base.titleLarge?.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: base.titleMedium?.copyWith(
        fontSize: 12,
        color: greytext,
      ));
}

ThemeData mytheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: darkpurple),
      textTheme: basetextTheme(base.textTheme),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: darkpurple,
          elevation: 0,
          splashColor: Colors.transparent),
      appBarTheme: AppBarTheme(backgroundColor: darkpurple, elevation: 0),
      scaffoldBackgroundColor: Colors.grey[100]);
}
