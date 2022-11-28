import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;
}

class Themes {
  static final darkMode = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    primaryColorDark: const Color(0xFF03071E),
    colorScheme: const ColorScheme.dark(),
  );

  static final lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
  );
}
