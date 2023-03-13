
import 'dart:math';

import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_list.dart';
import 'transection_form.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUser createState() => _TransactionUser();
}

class _TransactionUser extends State<TransactionUser> {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo Tênis de Corrida',
        value: 310.76,
        date: DateTime.now()
    ),
    Transaction(
        id: 't2',
        title: 'Conta de Luz',
        value: 211.30,
        date: DateTime.now()
    )
  ];

  _addTransaction(String titulo, double valor) {
    final newTransaction = Transaction(
        id: Random.secure().toString(),
        title: titulo,
        value: valor,
        date: DateTime.now()
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }
  @override
  Widget build(BuildContext) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}