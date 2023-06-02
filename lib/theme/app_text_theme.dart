import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppTextTheme extends TextTheme {
  /// true if mode is dark
  final bool isDark;
  final Color color;

  const AppTextTheme(this.color, this.isDark);

  @override
  TextStyle? get bodyLarge => TextStyle(
      fontFamily: AppTheme.font,
      color: isDark ? Colors.white60 : const Color(0xff606060),
      fontWeight: FontWeight.w400,
      fontSize: 16);

  @override
  TextStyle? get bodyMedium => TextStyle(
      fontFamily: AppTheme.font,
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: 14);

  @override
  TextStyle? get bodySmall => TextStyle(
      fontFamily: AppTheme.font,
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: 12);

  @override
  TextStyle? get headlineLarge => TextStyle(
      fontFamily: AppTheme.font,
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: 60);

  @override
  TextStyle? get headlineMedium => TextStyle(
      fontFamily: AppTheme.font,
      color: color,
      fontSize: 35,
      fontWeight: FontWeight.w600);

  @override
  TextStyle? get headlineSmall => TextStyle(
      fontFamily: AppTheme.font,
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: 16);

  @override
  TextStyle? get titleLarge => TextStyle(
      fontFamily: AppTheme.font,
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: 40);

  @override
  TextStyle? get titleMedium => TextStyle(
      fontFamily: AppTheme.font,
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 25);

  @override
  TextStyle? get titleSmall => TextStyle(
      fontFamily: AppTheme.font,
      color: color,
      fontWeight: FontWeight.w500,
      fontSize: 15);
}
