import 'package:adv_cubit/bloc/user/user_cubit.dart';
import 'package:adv_cubit/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserCubit userCubit = context.bloc<UserCubit>();

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
                final UserModel user =
                    new UserModel(name: 'Lenin', age: 32, professions: ['Software Developer, Dota Gamer']);
                userCubit.selectUser(user);
              }),
          MaterialButton(
              child: Text('Cambiar Edad'),
              color: Colors.blue,
              onPressed: () {
                userCubit.updateAge(67);
              }),
          MaterialButton(child: Text('Anadir Profecion'), color: Colors.blue, onPressed: () {
            userCubit.addProfession();
          })
        ],
      )),
    );
  }
}
