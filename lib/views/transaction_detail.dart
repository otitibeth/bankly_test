import 'package:bankly_transactions/extensions.dart/index.dart';
import 'package:bankly_transactions/gen/fonts.gen.dart';
import 'package:bankly_transactions/models/transaction_model/transaction_model.dart';
import 'package:bankly_transactions/theme/date_formatter.dart';
import 'package:bankly_transactions/widgets/price_widget.dart';
import 'package:bankly_transactions/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../gen/assets.gen.dart';
import '../widgets/app_bar.dart';

class TransactionDetails extends StatelessWidget {
  static const routeName = '/transaction-details';
  const TransactionDetails({super.key, required this.transaction});
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          context.isDark ? AppColors.backgroundDark : AppColors.background,
      appBar: BanklyAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            22.54.h,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 17),
              decoration: const BoxDecoration(
                  color: AppColors.lightBlue, shape: BoxShape.circle),
              child: Assets.svg.banklyLogo.svg(),
            ),
            19.49.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PriceWidget(
                  currency: 'N',
                  amount: double.parse(transaction.trnAmount ?? '0'),
                  style: context.bodyLarge?.copyWith(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontFamily.sfUiDisplay),
                ),
              ],
            ),
            70.51.h,
            Text(
              'Details:',
              style: context.bodyLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textBlack,
                  fontFamily: FontFamily.sfUiDisplay),
            ),
            10.0.h,
            TransactionDetailsTile(
              title: 'Date and Time',
              description:
                  formattedDateSlash(transaction.trnDate ?? DateTime.now()),
            ),
            TransactionDetailsTile(
              title: 'Reference',
              widget: Row(
                children: [
                  Text(
                    textAlign: TextAlign.right,
                    transaction.trnPaymentReference ?? '',
                    style: context.bodySmall?.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                        fontFamily: FontFamily.sfUiDisplay),
                  ),
                  12.5.w,
                  GestureDetector(
                      onTap: () {}, child: Assets.svg.copyIcon.svg())
                ],
              ),
            ),
            TransactionDetailsTile(
              title: 'Type',
              description: transaction.trnDrCr,
            ),
            TransactionDetailsTile(
                title: 'Balance',
                amount: double.parse(transaction.trnAmount ?? '0')),
            TransactionDetailsTile(
              title: 'Narration',
              description: transaction.trnNarration,
            ),
          ],
        ),
      ),
    );
  }
}
