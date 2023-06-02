import 'package:flutter/material.dart';

import '../../models/transaction_model/transaction_model.dart';
import '../../widgets/no_transaction.dart';
import '../../widgets/transaction_list.dart';

class Credit extends StatelessWidget {
  const Credit({super.key, this.transactions});
  final List<TransactionModel>? transactions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          transactions != null
              ? TransactionList(transactionList: creditList(transactions))
              : const NoTransaction(text: 'You currently do not have any Transactions!')
        ],
      ),
    );
  }
}

creditList(final List<TransactionModel>? transactions) => transactions!
    .where((transaction) => transaction.trnDrCr == 'deposit')
    .toList();
