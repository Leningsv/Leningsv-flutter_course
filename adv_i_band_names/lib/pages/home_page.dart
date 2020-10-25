import 'dart:io';

import 'package:adv_i_band_names/models/band_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BandModel> bands = [
    new BandModel(id: '1', name: 'metalida', votes: 5),
    new BandModel(id: '2', name: 'five second of sumer', votes: 20),
    new BandModel(id: '3', name: 'panic at the disco', votes: 50),
    new BandModel(id: '4', name: 'maron five', votes: 100)
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Bandas', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView.builder(
          itemCount: bands.length,
          itemBuilder: (BuildContext context, int index) =>
              this._bandTile(this.bands[index])),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 1,
        onPressed: this._dialogAddBand,
      ),
    );
  }

  Widget _bandTile(BandModel band) {
    return Dismissible(
        key: Key(band.id),
        direction: DismissDirection.startToEnd,
        onDismissed: (DismissDirection direction) {
          print(direction);
          print(band.id);
        },
        background: Container(
          padding: EdgeInsets.only(left: 8.0),
          color: Colors.red,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Delete Band',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: Text(band.name.substring(0, 2)),
            backgroundColor: Colors.blue[100],
          ),
          title: Text(band.name),
          trailing: Text(
            '${band.votes}',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            print(band.name);
          },
        ));
  }

  void _dialogAddBand() {
    final textController = new TextEditingController();
    if (!Platform.isIOS) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Nueva banda'),
                content: TextField(
                  controller: textController,
                ),
                elevation: 5,
                actions: [
                  MaterialButton(
                      textColor: Colors.blue,
                      child: Text('Add'),
                      onPressed: () => this._addBand(textController.text))
                ],
              ));
      return;
    }
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text('Nueva banda'),
              content: CupertinoTextField(
                controller: textController,
              ),
              actions: [ 
                CupertinoDialogAction(
                    isDefaultAction: true,
                    child: Text('Add'),
                    onPressed: () => this._addBand(textController.text)),
                CupertinoDialogAction(
                    isDestructiveAction: true,
                    child: Text('Dismisss'),
                    onPressed: () => Navigator.pop(context))
              ],
            ));
  }

  void _addBand(String name) {
    print(name);
    if (name.length > 1) {
      this.setState(() {
        this.bands.add(
            new BandModel(id: DateTime.now().toString(), name: name, votes: 0));
      });
    }
    Navigator.pop(context);
  }
}
