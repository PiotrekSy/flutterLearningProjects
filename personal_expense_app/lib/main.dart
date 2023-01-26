import 'dart:ui';

import 'package:flutter/material.dart';
import './transaction.dart';

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
  //LIST EXAMPLE
  final List<Transaction> transactions = [
    Transaction(
      id: 'transaction1',
      title: 'NewShoes',
      amount: 123.12,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'transaction2',
      title: 'New Car',
      amount: 6000.88,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'transaction3',
      title: 'Paper Plane',
      amount: 2000.08,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              elevation: 10,
              color: Colors.blue,
              child: const Text('CHART'),
            ),
          ),
          Column(
              children: transactions
                  .map(
                    (transaction) => Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                              ),
                            ),
                            child: Text(
                              'A: ${transaction.amount.toString()}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transaction.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                transaction.date.toString(),
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList())
        ],
      ),
    );
  }
}
