import 'package:bankly_transactions/widgets/no_transaction.dart';
import 'package:bankly_transactions/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import '../../models/transaction_model/transaction_model.dart';

class All extends StatelessWidget {
  const All({super.key, this.transactions});
  final List<TransactionModel>? transactions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          transactions != null
              ? TransactionList(transactionList: transactions!)
              : const NoTransaction(text: 'You currently do not have any Transactions!')
        ],
      ),
    );
  }
}
