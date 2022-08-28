import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_amount.dart';
import './transaction_detail.dart';

class TransactionListWidget extends StatelessWidget {
  final List<Transaction> transaction;

  const TransactionListWidget(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                TransactionAmountWidget(transaction[index].amount),
                TransactionDetailWidget(
                  title: transaction[index].title,
                  date: transaction[index].date,
                )
              ],
            ),
          );
        },
        itemCount: transaction.length,
      ),
    );
  }
}
