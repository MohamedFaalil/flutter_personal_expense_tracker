import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_amount.dart';
import './transaction_detail.dart';

class TransactionListWidget extends StatelessWidget {
  final List<Transaction> transaction;

  const TransactionListWidget(this.transaction, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transaction.map((Transaction tx) {
        return Card(
          child: Row(
            children: [
              TransactionAmountWidget(tx.amount),
              TransactionDetailWidget(
                title: tx.title,
                date: tx.date,
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
