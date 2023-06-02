import 'package:flutter/cupertino.dart';

extension DoubleExt on double {
  BorderRadius get toBorderRadius => BorderRadius.circular(this);

  /// a spacer widget
  Spacer get s => const Spacer();

  /// convert a double field to SizedBox with its height
  SizedBox get h => SizedBox(height: this);

  /// convert a double field to SizedBox with its widget
  SizedBox get w => SizedBox(width: this);
}

extension StringExtension on String {
    String capitalize() {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    }
}
