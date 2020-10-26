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
        child: Text('Pagina 1'),
      ),
    );
  }
}