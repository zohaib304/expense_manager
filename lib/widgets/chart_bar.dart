import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPrctgOfTotal;

  ChartBar(this.label, this.spendingAmount, this.spendingPrctgOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 15,
          child: FittedBox(
            child: Text('\$${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(20)),
              ),
              FractionallySizedBox(
                heightFactor: spendingPrctgOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
