import 'package:flutter/material.dart';
import 'transaction.dart';
import './widgets/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
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
  var titleController = TextEditingController();
  var amountController = TextEditingController();

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter app'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("CHART!"),
            ),
          ),
          Card(
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
                      print(
                          "===================ENTERED VALUES===================");
                      print(titleController.text);
                      print(amountController.text);
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
          ),
          TransactionWidget(transactions),
        ],
      ),
    );
  }
}
