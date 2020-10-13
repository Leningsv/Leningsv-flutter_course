import 'package:flutter/material.dart';
import 'package:i_hello_word/src/pages/counter_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Center(child: CounterPage()));
  }
}
