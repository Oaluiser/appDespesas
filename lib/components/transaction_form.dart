import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(labelText: 'Value (R\$)'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    print(titleController.text);
                    print(valueController.text);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                  ),
                  child: const Text('New Transaction'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}