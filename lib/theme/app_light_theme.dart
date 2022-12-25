import 'package:flutter/material.dart';

ThemeData appLightTheme() {
  final  ThemeData lightTheme = ThemeData.light();

  ///Customize light theme as per requirements

  return lightTheme.copyWith(
    primaryColor:  Colors.orange,
    appBarTheme: lightTheme.appBarTheme.copyWith(
      color: Colors.orange
    ),
    buttonTheme: lightTheme.buttonTheme.copyWith(
        buttonColor: Colors.blue,
        disabledColor: Colors.blue.shade300
    ),
    textTheme: lightTheme.textTheme.copyWith(
      //add custom styles to properties as per requirement
      headline1: lightTheme.textTheme.headline1?.copyWith(color: Colors.orange, fontWeight: FontWeight.w800, fontSize: 66 ),
      headline2: lightTheme.textTheme.headline1?.copyWith(color: Colors.orange, fontWeight: FontWeight.w600),
      headline3: lightTheme.textTheme.headline1?.copyWith(color: Colors.orange, fontWeight: FontWeight.w400),
    ),
    progressIndicatorTheme: lightTheme.progressIndicatorTheme.copyWith(color: Colors.green)
  );

}