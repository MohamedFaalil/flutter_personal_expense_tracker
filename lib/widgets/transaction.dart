import 'package:flutter/material.dart';
import './../transaction.dart';
import './transaction_amount.dart';
import './transaction_detail.dart';

class TransactionWidget extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionWidget(this.transactions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((Transaction tx) {
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
