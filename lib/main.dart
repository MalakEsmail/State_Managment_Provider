import 'package:flutter/material.dart';
import 'CustomWidgetOne.dart';
import 'CustomWidgetTwo.dart';
import 'Counter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ChangeNotifierProvider<Counter>(
            create: (context) => Counter(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomWidget1(),
                CustomWidget2()
                //widget 2
              ],
            ),
          ),
        ),
      ),
    );
  }
}
