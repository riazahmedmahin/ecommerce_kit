
import 'package:flutter/material.dart';
class AppThemeData {
  static ThemeData lightThemeData = ThemeData(
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.redAccent
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            //color: AppColors.primaryColor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent,
          ),
        ),
      ),
      textTheme: TextTheme(
        titleLarge: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade600,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor:Colors.pinkAccent,
          padding: const EdgeInsets.symmetric(vertical: 14),
          textStyle: const TextStyle(
            fontSize: 14,
            letterSpacing: 0.5,
          ),
          foregroundColor: Colors.white,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor:Colors.redAccent
          )
      ),
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 18, color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 5
      )
  );
}