
import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController();

  final valueController = TextEditingController();

  _subimitForm() {
    final titulo = titleController.text;
    final valor = double.tryParse(valueController.text) ?? 0.0;

    if(titulo.isEmpty || valor <= 0){
      return;
    }

    widget.onSubmit(titulo, valor);
  }

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                  labelText: 'Título'
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _subimitForm(),
              decoration: const InputDecoration(
                  labelText: 'Valor (R\$)'
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: _subimitForm,
                    child: const Text('Nova Transação',
                      style: TextStyle(
                          color: Colors.purple
                      ),
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}