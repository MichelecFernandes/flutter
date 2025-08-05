import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light, 
      scaffoldBackgroundColor: Colors.white, 
      primaryColor: const Color.fromARGB(255, 193, 223, 194)
    );
  }

    static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color.fromARGB(255, 5, 69, 88),
      primaryColor: const Color.fromARGB(77, 11, 253, 112)
    );
  }
}
