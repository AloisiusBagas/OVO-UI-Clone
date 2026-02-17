import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ovo_ui/Screen/MainPage/MainPage.dart';
import 'package:ovo_ui/Screen/Theme.dart';

void main(List<String> args) {
  debugPaintSizeEnabled = false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
    theme: mytheme(),
  ));
}
