import 'package:bankly_transactions/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'app_text_theme.dart';

class AppTheme {
  static const String font = FontFamily.sfUiDisplay;

  TextTheme get textTheme => const AppTextTheme(AppColors.textBlack, false);
  TextTheme get textThemeDark => const AppTextTheme(Colors.white, true);

  ThemeData get dark => ThemeData.dark().copyWith(
      primaryColor: AppColors.primaryBlue,
      textTheme: textThemeDark,
      primaryTextTheme: textThemeDark,
      cardColor: AppColors.inputFillDark,
      useMaterial3: true,
      primaryColorDark: AppColors.primaryBlue,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      primaryColorLight: AppColors.black,
      // inputDecorationTheme: const AppInputTheme(true),
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryBlue,
        background: AppColors.backgroundDark,
        brightness: Brightness.dark,
        // surface: canvasColorDark,
        // secondary: canvasColorDark,
        onPrimary: Colors.white,
      ).copyWith(background: AppColors.backgroundDark));

  ThemeData get light => ThemeData.light().copyWith(
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      primaryColor: AppColors.primaryBlue,
      useMaterial3: true,
      cardColor: AppColors.white,
      primaryColorDark: AppColors.background,
      primaryColorLight: AppColors.primaryBlue,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryBlue,
        onPrimary: Colors.white,
      ).copyWith(background: AppColors.background));
}
