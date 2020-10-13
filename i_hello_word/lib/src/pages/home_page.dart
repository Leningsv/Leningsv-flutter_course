import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = new TextStyle(fontSize: 40);
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              this.counter.toString(),
              style: this.textStyle,
            )
          ],
        ),
      ),
      floatingActionButton: _generateButtons(),
    );
  }
  Widget _generateButtons() {
    return Row(
      children: [
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            this.counter++;
            print('Hola'+ this.counter.toString());
          },
        ),FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            this.counter++;
            print('Hola'+ this.counter.toString());
          },
        )
      ],
    );
  }
}
