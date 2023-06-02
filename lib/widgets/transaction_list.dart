import 'package:bankly_transactions/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

import '../models/transaction_model/transaction_model.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key, required this.transactionList});
  final List<TransactionModel> transactionList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
        itemCount: transactionList.length,
        itemBuilder: (context, i) {
          var transaction = transactionList[i];
          return TransactionTile(transaction: transaction);
        });
  }
}