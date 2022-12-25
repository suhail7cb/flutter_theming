import 'dart:async';
import 'package:flutter/material.dart';

class ThemeController {
  static final ThemeController _singleton = ThemeController._internal();

  factory ThemeController() {
    return _singleton;
  }
  ThemeController._internal();

  ThemeMode appTheme = ThemeMode.system;
  StreamController<ThemeMode> themeController = StreamController<ThemeMode>();

  void switchTheme() {
    if(appTheme == ThemeMode.dark) {
      appTheme = ThemeMode.light;
    }
    else {
      appTheme = ThemeMode.dark;
    }
    themeController.sink.add(appTheme);
  }
}