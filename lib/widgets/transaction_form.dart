import 'package:flutter/material.dart';

class TransactionFormWidget extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function updateTransactionList;
  TransactionFormWidget(this.updateTransactionList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                updateTransactionList(
                    titleController.text, double.parse(amountController.text));
              },
              child: const Text(
                "Add Transaction",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
