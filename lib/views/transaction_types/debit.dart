import 'package:flutter/material.dart';

import '../../models/transaction_model/transaction_model.dart';
import '../../widgets/no_transaction.dart';
import '../../widgets/transaction_list.dart';

class Debit extends StatelessWidget {
  const Debit({super.key, this.transactions});
  final List<TransactionModel>? transactions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          transactions != null
              ? TransactionList(transactionList: debitList(transactions))
              : const NoTransaction(
                  text: 'You currently do not have any Transactions!')
        ],
      ),
    );
  }
}

debitList(final List<TransactionModel>? transactions) => transactions!
    .where((transaction) => transaction.trnDrCr != 'deposit')
    .toList();
