import 'package:flutter/material.dart';

class ChartDart extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  ChartDart(
    this.label,
    this.spendingAmount,
    this.spendingPctOfTotal,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('\$${spendingAmount.toStringAsFixed(0)}'),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: null,
        ),
         SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
