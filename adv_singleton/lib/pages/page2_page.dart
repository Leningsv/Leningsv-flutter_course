import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              child: Text('Estableser usuario'),
              color: Colors.blue,
              onPressed: () {}),
          MaterialButton(
              child: Text('Cambiar Edad'),
              color: Colors.blue,
              onPressed: () {}),
          MaterialButton(
              child: Text('Anadir Profecion'),
              color: Colors.blue,
              onPressed: () {})
        ],
      )),
    );
  }
}
