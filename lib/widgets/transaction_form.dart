import 'package:flutter/material.dart';

class TransactionFormWidget extends StatefulWidget {
  final Function updateTransactionList;
  const TransactionFormWidget(this.updateTransactionList, {Key? key})
      : super(key: key);

  @override
  State<TransactionFormWidget> createState() => _TransactionFormWidgetState();
}

class _TransactionFormWidgetState extends State<TransactionFormWidget> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitForm() {
    final enteredTitle = titleController.text;
    final enteredAmountStr = amountController.text;
    if (enteredTitle.isEmpty || enteredAmountStr.isEmpty) return;
    final enteredAmount = double.parse(amountController.text);
    if (enteredAmount <= 0) return;

    widget.updateTransactionList(enteredTitle, enteredAmount);
    Navigator.of(context).pop();
  }

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
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) {
                submitForm();
              },
            ),
            TextButton(
              onPressed: () {
                submitForm();
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
