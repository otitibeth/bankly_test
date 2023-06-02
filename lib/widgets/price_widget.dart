import 'package:bankly_transactions/extensions.dart/index.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/app_colors.dart';
import '../gen/fonts.gen.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget(
      {super.key,
      this.prefix,
      this.color,
      this.amount,
      this.currency,
      this.style});
  final String? prefix, currency;
  final Color? color;
  final double? amount;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('#,##0.00', 'en_US');
    return RichText(
        text: TextSpan(
            text: '',
            style: style ??
                context.bodyMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: color ?? AppColors.black,
                    fontFamily: FontFamily.sfUiDisplay),
            children: [
          TextSpan(
            text: prefix,
          ),
          TextSpan(text: currency ?? '₦'),
          TextSpan(text: formatter.format(amount ?? 0))
        ]));
  }
}
