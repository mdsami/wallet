import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color color;
  Box({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: 74,
      decoration: BoxDecoration(
          color: color.withOpacity(0.4),
          borderRadius: BorderRadius.circular(8)),
      child: Icon(Icons.account_balance_wallet),
    );
  }
}
