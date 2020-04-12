import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 200,
                  child: Image.asset('assets/images/undraw_no_data_qbuo.png',
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'No data found',
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  elevation: 0,
                                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('\$${transactions[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(transactions[index].title, 
                    style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(DateFormat.yMMMd().format(transactions[index].date),)
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
