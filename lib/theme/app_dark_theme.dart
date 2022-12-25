
import 'package:flutter/material.dart';

ThemeData appDarkTheme() {
  final  ThemeData theme = ThemeData.dark();

  ///Customize dark theme as per requirements
  ///
  return theme.copyWith(
    primaryColor:  Colors.green,
    appBarTheme: theme.appBarTheme.copyWith(
        color: Colors.green
    ),
    buttonTheme: theme.buttonTheme.copyWith(
        buttonColor: Colors.blue,
        disabledColor: Colors.blue.shade300
    ),
      textTheme: theme.textTheme.copyWith(
        //add custom styles to properties as per requirement
        headline1: theme.textTheme.headline1?.copyWith(color: Colors.green, fontWeight: FontWeight.w800, fontSize: 66 ),
        headline2: theme.textTheme.headline1?.copyWith(color: Colors.green, fontWeight: FontWeight.w600),
        headline3: theme.textTheme.headline1?.copyWith(color: Colors.green, fontWeight: FontWeight.w400),
      ),
      progressIndicatorTheme: theme.progressIndicatorTheme.copyWith(color: Colors.yellow),
      switchTheme: theme.switchTheme.copyWith(
        //Add properties as per need
      ),

  );
}

