import 'package:flutter/material.dart';

class AppColors {
  //dark mode background
  static const Color backgroundOnDarkMode = Color(0xFF121212);
  //dark mode background gradient
  static const Color backgroundGlowStartOnDarkMode =
      Color.fromARGB(255, 47, 83, 53);
  static const Color backgroundGlowEndOnDarkMode =
      Color.fromARGB(255, 25, 36, 30);

  //dark mode text
  static const Color textOnDarkMode = Color(0xFFE0E0E0);

  //dark mode button
  static const Color buttonOnDarkMode = Color(0xFF121212);

  // accent color
  static const Color accent = Color(0xFF93FFA6); // 포인트 연두 (텍스트/버튼용)

  //light mode text
  static const Color textOnLightMode = Color(0xFF121212);

  //light mode button
  static const Color buttonOnLightMode = Color(0xFFE0E0E0);

  static const Color backgroundOnLightMode = Color(0xFFE0E0E0);
}
