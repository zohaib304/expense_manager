import './widgets/user_transactions.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter App")),
        body: SingleChildScrollView (
                  child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue[100],
                  child: Text("Welcome to Expense manager"),
                  elevation: 5,
                ),
              ),
              UserTransactions()
            ],
          ),
        ));
  }
}
