import 'package:flutter/material.dart';
import 'package:newsapp/utils/app_colors.dart';

class AppTheme{
  static final ThemeData lightTheme  = ThemeData(
    primaryColor:AppColors.whiteColor,
    indicatorColor: AppColors.blackColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    textTheme: TextTheme(labelLarge: TextStyle(
      color: AppColors.blackColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
      labelMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
        headlineLarge: TextStyle(
          color: AppColors.blackColor,
          fontSize: 20,
        ),
      headlineMedium: TextStyle(
        color: AppColors.blackColor,
        fontSize: 24,
      ),
    ),
    appBarTheme:AppBarTheme(
        iconTheme: IconThemeData(
          color: AppColors.blackColor
        ),
        centerTitle: true,
        backgroundColor: AppColors.whiteColor),

  );


  static final ThemeData darkTheme  = ThemeData(
  primaryColor:AppColors.blackColor,
    appBarTheme:AppBarTheme(

        iconTheme: IconThemeData(
            color: AppColors.whiteColor
        ),
        centerTitle: true,backgroundColor: AppColors.blackColor),
    indicatorColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.blackColor,
    textTheme: TextTheme(labelLarge: TextStyle(
      color: AppColors.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
      labelMedium: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      headlineLarge: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 20,

      ),
      headlineMedium: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 24,
      ),
    ),
  );


}