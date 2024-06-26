import 'package:flutter/material.dart';

import 'IAppTheme.dart';

class AppTheme extends IAppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    if (_instance != null)
      return _instance!;
    else {
      _instance = AppTheme.init();
      return _instance!;
    }
  }

  AppTheme.init();

  @override
  ThemeData get theme => ThemeData(
        colorScheme: _colorScheme,
        iconTheme: IconThemeData(color: Colors.grey),
        tabBarTheme: _tabBarTheme,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0
        )
      );

  ColorScheme get _colorScheme => ColorScheme(
        primary: Colors.white,
        secondary: Colors.black26,
        surface: Colors.red,
        background: Colors.black,
        error: Colors.teal.shade800,
        onPrimary: Colors.pink.shade800,
        onSecondary: Colors.deepPurple.shade900,
        onSurface: Colors.lightBlue,
        onBackground: Colors.brown,
        onError: Colors.pink.shade300,
        brightness: Brightness.light,
      );

  TabBarTheme get _tabBarTheme => TabBarTheme(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
      );
}
