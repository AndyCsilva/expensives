import 'package:flutter/material.dart';

import './models/transaction.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = <Transaction>[
    Transaction(
        id: 't1',
        title: 'Novo Tênis de Corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Restaurante Outback',
        value: 178.98,
        date: DateTime.now()),
    Transaction(
      id: 't3',
      title: 'Supermercados',
      value: 771.25,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Despesas Pessoais',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Card(
              child: Text('Grafico'),
              color: Colors.blue[200],
              elevation: 5,
              //margin: EdgeInsets.all(10),
            ),
            width: double.infinity,
            //margin: EdgeInsets.all(5),
          ),
          /* Container(
            child: */
          Column(
            children: _transactions
                .map((e) => Card(
                      child: Text(e.title),
                      //color: Colors.blue[200],
                      elevation: 5,
                    ))
                .toList(),
          ), /*
            width: double.infinity,
            //margin: EdgeInsets.all(5),
          ),*/
        ],
      ),
    );
  }
}
