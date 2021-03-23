import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primarySwatch: Colors.deepPurple,
  );
}

ThemeData getAppDarkTheme() {
  return ThemeData(
    primaryColor: Colors.deepPurple[300],
    accentColor: Colors.deepPurple[300],
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      color: Colors.purple[900],
    ),
    brightness: Brightness.dark,
  );
}
