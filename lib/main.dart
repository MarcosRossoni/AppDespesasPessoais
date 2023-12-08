import 'package:app_despesas_pessoais/components/transaction_user.dart';
import 'package:flutter/material.dart';

main() => runApp(AppDespesasPessoais());

class AppDespesasPessoais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                child: Card(
              child: Text('Grafico'),
              elevation: 5,
              color: Colors.blue,
            )),
            TransactionUser()
          ],
        ),
      ),
    );
  }
}
