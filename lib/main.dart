
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main () => runApp(AppDespesasPessoais());

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              child: Card(
                child: Text('Grafico'),
                elevation: 5,
                color: Colors.blue,
              )
          ),
          Card(
            child: Text('Lista de Transacoes'),
          )
        ],
      ),
    );
  }
}