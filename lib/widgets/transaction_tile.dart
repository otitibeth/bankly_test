import 'package:bankly_transactions/extensions.dart/index.dart';
import 'package:bankly_transactions/views/transaction_detail.dart';
import 'package:bankly_transactions/widgets/price_widget.dart';
import 'package:flutter/cupertino.dart';

import '../constants/app_colors.dart';
import '../gen/assets.gen.dart';
import '../gen/fonts.gen.dart';
import '../models/transaction_model/transaction_model.dart';
import '../theme/date_formatter.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key, required this.transaction});
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) =>
                    TransactionDetails(transaction: transaction)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: AppColors.border,
            width: 1.0,
          ),
        )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: transaction.trnDrCr == 'deposit'
                          ? AppColors.lightGreen
                          : AppColors.lightRed),
                  child: transaction.trnDrCr == 'deposit'
                      ? Assets.svg.creditIcon.svg()
                      : Assets.svg.debitIcon.svg(),
                ),
              ),
              25.0.w,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (transaction.trnDrCr ?? '').capitalize(),
                    style: context.bodyMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textBlack,
                        fontFamily: FontFamily.sfUiDisplay),
                  ),
                  4.0.h,
                  Text(
                    formatttedDate(transaction.trnDate ?? DateTime.now()),
                    style: context.bodyMedium?.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.subtitleText,
                        fontFamily: FontFamily.roboto),
                  )
                ],
              )
            ]),
            PriceWidget(
              prefix: transaction.trnDrCr == 'deposit' ? '+' : '-',
              amount: double.parse(transaction.trnAmount ?? '0'),
              color: transaction.trnDrCr == 'deposit'
                  ? AppColors.greenText
                  : AppColors.red,
            )
          ],
        ),
      ),
    );
  }
}

class TransactionDetailsTile extends StatelessWidget {
  const TransactionDetailsTile(
      {super.key,
      required this.title,
      this.widget,
      this.description,
      this.amount});
  final String title;
  final String? description;
  final Widget? widget;
  final double? amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: AppColors.border,
          width: 1.0,
        ),
      )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.bodySmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.searchColor,
                fontFamily: FontFamily.sfUiDisplay),
          ),
          widget ??
              (amount != null
                  ? PriceWidget(
                      amount: amount ?? 0,
                      style: context.bodySmall?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                          fontFamily: FontFamily.sfUiDisplay),
                    )
                  : Container(
                      width: 250,
                      // padding: EdgeInsets.only(left: 15),
                      alignment: Alignment.centerRight,
                      child: Text(
                        textAlign: TextAlign.right,
                        softWrap: true,
                        // overflow: TextOverflow.ellipsis,
                        description ?? '',
                        style: context.bodySmall?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                            fontFamily: FontFamily.sfUiDisplay),
                      ),
                    ))
        ],
      ),
    );
  }
}

final dummyTransactions = <TransactionModel>[
  TransactionModel(
      trnDrCr: 'You currently do not have any Transactions!',),
];
