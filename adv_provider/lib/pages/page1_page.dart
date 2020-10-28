import 'package:adv_provider/models/user_model.dart';
import 'package:adv_provider/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserService userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        actions: [IconButton(icon: Icon(Icons.exit_to_app), onPressed: () => userService.deleteUser())],
      ),
      body: userService.existUser
          ? UserInfo(
              user: userService.user,
            )
          : Center(child: Text('No hay usuario seleccionado')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final UserModel user;

  const UserInfo({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Nombre: ${this.user.name}'),
          ),
          ListTile(
            title: Text('Edad: ${this.user.age}'),
          ),
          Text(
            'Profeciones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Profecion 1'),
          ),
          ...user.professions
              .map((profession) => ListTile(
                    title: Text(profession),
                  ))
              .toList()
        ],
      ),
    );
  }
}
