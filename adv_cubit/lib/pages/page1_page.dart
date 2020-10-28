import 'package:adv_cubit/bloc/user/user_cubit.dart';
import 'package:adv_cubit/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<UserCubit>().deleteUser();
              })
        ],
      ),
      body: BodyScaffold(),
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
            title: Text('Nombre: ${user.name}'),
          ),
          ListTile(
            title: Text('Edad: ${user.age}'),
          ),
          Text(
            'Profeciones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
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

class BodyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (_, state) {
        print(state);
        switch (state.runtimeType) {
          case UserInitial:
            return Center(child: Text('No hay informacion del usuario'));
            break;
          case UserActive:
            return UserInfo(user: (state as UserActive).user);
            break;
          default:
            return Center(child: Text('Estado no reconocido'));
        }
        // if (state is UserInitial) {
        //   return Center(
        //     child: Text('No hay informacion del usuario'),
        //   );
        // } else if (state is UserActive) {
        //   return UserInfo(
        //     user: state.user,
        //   );
        // }
        // return Center(
        //   child: Text('Estado no reconocido'),
        // );
      },
    );
  }
}
