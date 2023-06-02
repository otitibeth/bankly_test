import 'package:flutter/material.dart';

extension B on BuildContext {
  /// current context's height
  double get appHeight => size.height;

  /// current context's width
  double get appWidth => size.width;

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  /// headlineLarge text style same as [Theme.of(this).textTheme.headlineLarge]
  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;

  /// headlineMedium text style same as [Theme.of(this).textTheme.headlineMedium]
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;

  /// headlineSmall text style same as [Theme.of(this).textTheme.headlineSmall]
  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;

  /// titleLarge text style same as [Theme.of(this).textTheme.titleLarge]
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  /// titleMedium text style same as [Theme.of(this).textTheme.titleMedium]
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;

  /// bodySmall text style same as [Theme.of(this).textTheme.bodySmall]
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  /// bodyMedium text style same as [Theme.of(this).textTheme.bodyMedium]
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyMediumAlt => Theme.of(this)
      .textTheme
      .bodyMedium
      ?.copyWith(color: isDark ? Colors.grey : const Color(0xff576273));

  /// bodyLarge text style same as [Theme.of(this).textTheme.bodyLarge]
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  Size get size => MediaQuery.of(this).size;

  Color get baseShimmerColor =>
      isDark ? const Color(0xff444444) : const Color(0xffE9ECEE);
  Color get highlightShimmerColor => isDark
      ? const Color.fromARGB(255, 25, 24, 24)
      : const Color.fromARGB(255, 190, 193, 196);


  void pop<T extends Object?>([Object? arguments]) =>
      Navigator.pop(this, arguments);
}
