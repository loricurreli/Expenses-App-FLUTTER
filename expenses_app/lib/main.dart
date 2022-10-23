import 'package:expenses_app/widgets/transaction_list.dart';
import 'models/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                child: Card(
              color: Colors.blue,
              child: Container(width: double.infinity, child: Text("CHART")),
              elevation: 5,
            )),
            Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(labelText: "Title"),
                    ),
                    TextField(
                      controller: amountController,
                      decoration: InputDecoration(labelText: "Amount"),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.grey)),
                        onPressed: () {
                          print(titleController.text);
                          print(amountController.text);
                        },
                        child: Text(
                          "Add Transaction",
                          style: TextStyle(color: Colors.purple),
                        ))
                  ]),
            )),
            TransactionList(),
          ]),
    );
  }
}
