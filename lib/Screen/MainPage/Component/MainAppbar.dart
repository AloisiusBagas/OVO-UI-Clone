import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar mainappbar(String? title) {
  return AppBar(
    title: title == null
        ? SvgPicture.asset("assets/icons/logoovo.svg")
        : Text(title),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 17),
        child: SvgPicture.asset("assets/icons/bell.svg"),
      )
    ],
  );
}
