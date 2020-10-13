import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = new TextStyle(fontSize: 40);
  int _counter = 0;

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
                'Full Sate',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                this._counter.toString(),
                style: this._textStyle,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: this._generateButtons());
  }

  Widget _generateButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            this.setState(() {
              this._counter = 0;
            });
            print('Hola' + this._counter.toString());
          },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            this.setState(() {
              this._counter--;
            });
            print('Hola' + this._counter.toString());
          },
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: this._add, // Reference to function
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }

  void _add() {
    this.setState(() {
      this._counter++;
    });
  }
}
