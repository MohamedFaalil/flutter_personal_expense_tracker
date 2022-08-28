import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionDetailWidget extends StatelessWidget {
  final String title;
  final DateTime date;
  const TransactionDetailWidget(
      {required this.title, required this.date, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          DateFormat.yMd().format(date),
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
