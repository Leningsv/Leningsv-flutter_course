part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {
  final bool existUser = false;

  @override
  String toString() {
    return 'UserInitial{existUser: $existUser}';
  }
}

class UserActive extends UserState {
  final bool existUser = true;
  final UserModel user;

  UserActive(this.user);
}
