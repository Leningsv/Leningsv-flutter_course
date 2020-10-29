import 'package:adv_bloc/bloc/user/user_bloc.dart';
import 'package:adv_bloc/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context);
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
              onPressed: () {
                final UserModel user = new UserModel(name: 'Lenin', age: 32, professions: ['Developer', 'Dota gamer']);
                userBloc.add(ActiveUser(user));
              }),
          MaterialButton(
              child: Text('Cambiar Edad'),
              color: Colors.blue,
              onPressed: () {
                userBloc.add(UpdateAge(15));
              }),
          MaterialButton(
              child: Text('Anadir Profecion'),
              color: Colors.blue,
              onPressed: () {
                userBloc.add(AddProfession('Profession'));
              })
        ],
      )),
    );
  }
}
