import 'package:flutter/material.dart';

import 'app_colors.dart';

mixin AppTheme {
  static final defaultTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      primaryColor: Colors.white,
      accentColor: Colors.amber,
      brightness: Brightness.dark,
      fontFamily: 'RatMedium',
      textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: 'RatRegular',
            color: Colors.black,
          ),
          bodyText2: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: 'RatMedium',
            height: 1.4,
            color: Colors.black,
          ),
          headline1: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.normal,
            fontFamily: 'RatBold',
            color: Colors.black,
          ),
          headline2: const TextStyle(
            fontFamily: 'RatMedium',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          headline3: const TextStyle(
            fontFamily: 'RatMedium',
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          headline4: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            fontFamily: 'RatMedium',
            color: Colors.black,
          ),
          headline6: const TextStyle(
            fontFamily: 'RatMedium',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          button: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: 'RatMedium',
              fontWeight: FontWeight.w600)),
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'RatMedium',
                color: Colors.white,
              ),
            ),
      ),
      iconTheme: IconThemeData(
        color: Colors.grey[600],
      ),
      cardTheme: CardTheme(
          shadowColor: Colors.grey[200],
          color: AppColors.backgroundColor,
          margin: EdgeInsets.zero,
          elevation: 6.0),
      buttonTheme: const ButtonThemeData(
        height: 56,
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Colors.black,
      ));
}
