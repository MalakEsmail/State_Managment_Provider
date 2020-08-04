import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/Counter.dart';

class CustomWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<Counter>(context).number;
    return Text(
      text.toString(),
      style: TextStyle(fontSize: 50),
    );
  }
}
