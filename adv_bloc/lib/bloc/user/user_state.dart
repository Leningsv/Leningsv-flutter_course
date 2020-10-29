part of 'user_bloc.dart';

@immutable
class UserState {
  final bool existUser;
  final UserModel user;

  UserState({UserModel user})
      : user = user ?? null,
        existUser = user != null ? true : false;

  UserState copyWith({UserModel user}) => UserState(user: user ?? this.user);

  UserState initial() => new UserState();
}
