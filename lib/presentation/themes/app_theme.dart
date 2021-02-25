import 'package:app_provider/presentation/themes/themes.dart';
import 'package:flutter/material.dart';

import 'theme_text.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Color(0xff1f655d),
    accentColor: AppColor.green,
    textTheme: ThemeText.getTextTheme(),
    appBarTheme: AppBarTheme(color: AppColor.greenDark));

ThemeData lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Color(0xfff5f5f5),
    accentColor: AppColor.green,
    textTheme: ThemeText.getTextTheme(),
    appBarTheme: AppBarTheme(
        color: AppColor.greenDark,
        actionsIconTheme: IconThemeData(color: Colors.white)));



/*
ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Color(0xff1f655d),
    accentColor: Color(0xff40bf7a),
    textTheme: ThemeText.getTextTheme(),
    TextTheme(
        headline6: TextStyle(color: Color(0xff40bf7a)),
        subtitle1: TextStyle(color: Colors.white),
        subtitle2: TextStyle(color: Color(0xff40bf7a))),
    appBarTheme: AppBarTheme(color: Color(0xff1f655d)));

ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Color(0xfff5f5f5),
    accentColor: Color(0xff40bf7a),
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.black54),
        subtitle1: TextStyle(color: Colors.grey),
        subtitle2: TextStyle(color: Colors.white)),
    appBarTheme: AppBarTheme(
        color: Color(0xff1f655d),
        actionsIconTheme: IconThemeData(color: Colors.white)));

* */