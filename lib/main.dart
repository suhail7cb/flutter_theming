import 'package:flutter/material.dart';
import 'package:theme_example_flutter/home_screen.dart';
import 'package:theme_example_flutter/theme/app_dark_theme.dart';
import 'package:theme_example_flutter/theme/app_light_theme.dart';
import 'package:theme_example_flutter/theme_switcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeMode>(
      stream: ThemeController().themeController.stream,
      initialData: ThemeMode.system,
      builder: (BuildContext context, snapshot) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            debugShowMaterialGrid: false,
            darkTheme: appDarkTheme(),
            theme: appLightTheme(),
            themeMode: snapshot.data,
          home: const HomeScreen()
        );
      }
    );
  }
}