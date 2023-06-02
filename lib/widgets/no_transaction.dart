import 'package:bankly_transactions/constants/app_colors.dart';
import 'package:bankly_transactions/extensions.dart/context.dart';
import 'package:flutter/widgets.dart';

import '../gen/fonts.gen.dart';

class NoTransaction extends StatelessWidget {
  const NoTransaction({super.key, this.text});
  // final List<TransactionModel>? trn;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.primaryBlue),
        child: Text(
          textAlign: TextAlign.center,
          text ?? '',
          style: context.bodySmall?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
              fontFamily: FontFamily.sfUiDisplay),
        ));
  }
}
