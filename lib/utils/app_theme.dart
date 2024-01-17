import 'package:flutter/material.dart';

import 'app_colors.dart';

mixin AppTheme {
  static final defaultTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    primaryColor: Colors.white,
    brightness: Brightness.dark,
    fontFamily: 'RatMedium',
    textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: 'RatRegular',
            color: Colors.black,
          ),
          bodyMedium: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: 'RatMedium',
            height: 1.4,
            color: Colors.black,
          ),
          displayLarge: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.normal,
            fontFamily: 'RatBold',
            color: Colors.black,
          ),
          displayMedium: const TextStyle(
            fontFamily: 'RatMedium',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          displaySmall: const TextStyle(
            fontFamily: 'RatMedium',
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          headlineMedium: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            fontFamily: 'RatMedium',
            color: Colors.black,
          ),
          titleLarge: const TextStyle(
            fontFamily: 'RatMedium',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          labelLarge: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: 'RatMedium',
            fontWeight: FontWeight.w600,
          ),
        ),
    appBarTheme: AppBarTheme(),
    iconTheme: IconThemeData(
      color: Colors.grey[600],
    ),
    cardTheme: CardTheme(
      shadowColor: Colors.grey[200],
      color: AppColors.backgroundColor,
      margin: EdgeInsets.zero,
      elevation: 6.0,
    ),
    buttonTheme: const ButtonThemeData(
      height: 56,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Colors.black,
    ),
  );
}
