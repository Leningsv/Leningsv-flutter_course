import 'package:adv_provider/models/user_model.dart';
import 'package:adv_provider/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: userService.existUser ? Text('Nombre: ${userService.user.name}') : Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              child: Text('Estableser usuario'),
              color: Colors.blue,
              onPressed: () {
                final user = new UserModel(name: 'Lenin', age: 32, professions: ['Fullstack Developer', 'Video Gamer']);
                userService.user = user;
              }),
          MaterialButton(
              child: Text('Cambiar Edad'),
              color: Colors.blue,
              onPressed: () {
                // En los metodos el listen tiene que ir en false
                // final userService = Provider.of<UserService>(context, listen: false);
                userService.updateAge(12);
              }),
          MaterialButton(
              child: Text('Anadir Profecion'),
              color: Colors.blue,
              onPressed: () {
                userService.addProfession();
              })
        ],
      )),
    );
  }
}
