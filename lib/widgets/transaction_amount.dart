import 'package:flutter/material.dart';

class TransactionAmountWidget extends StatelessWidget {
  final double amount;
  const TransactionAmountWidget(this.amount, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple,
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(5),
      child: Text(
        '\$ ${amount.toString()}',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),
      ),
    );
  }
}
