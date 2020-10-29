part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActiveUser extends UserEvent {
  final UserModel user;

  ActiveUser(this.user);
}

class UpdateAge extends UserEvent {
  final int age;

  UpdateAge(this.age);
}

class AddProfession extends UserEvent {
  final String profession;

  AddProfession(this.profession);
}

class DeleteUser extends UserEvent {
  DeleteUser();
}
