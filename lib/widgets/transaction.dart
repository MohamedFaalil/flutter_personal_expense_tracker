import 'package:expense_tracker_app/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import './transaction_form.dart';
import '../models/transaction.dart';

class TransactionWidget extends StatefulWidget {
  const TransactionWidget({Key? key}) : super(key: key);

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New shoe',
      amount: 45.0,
      date: DateTime.parse("2022-08-24"),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly groceries',
      amount: 51.0,
      date: DateTime.parse("2022-08-23"),
    ),
  ];

  void _updateTransactionList(String title, double amount) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionFormWidget(_updateTransactionList),
        SizedBox(
          height: 500,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TransactionListWidget(_userTransactions),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
