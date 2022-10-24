
import 'package:flutter/material.dart'
;
class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewtransaction;
  
  NewTransaction(this.addNewtransaction);

  void submitData(){
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    if(enteredTitle.isEmpty || enteredAmount <=0){
      return;
    }
      addNewtransaction(enteredTitle,enteredAmount);
   
  }
  @override
  Widget build(BuildContext context) {
    return Card(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(labelText: "Title"),
                      onSubmitted: (_) => submitData(),
                    ),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      controller: amountController,
                      decoration: InputDecoration(labelText: "Amount"),
                      onSubmitted: (_) => submitData(),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.grey)),
                        onPressed: submitData,
                        child: Text(
                          "Add Transaction",
                          style: TextStyle(color: Colors.purple),
                        ))
                  ]),
            )
            );
  }
}