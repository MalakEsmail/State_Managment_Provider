import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/Counter.dart';

class CustomWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return RaisedButton(
      color: counter.number % 2 == 0 ? Colors.green : Colors.blue,
      onPressed: () {
        counter.increment();
      },
      child: Text('click'),
    );
  }
}
