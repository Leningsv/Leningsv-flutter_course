import 'package:adv_cubit/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectUser(UserModel user) {
    emit(UserActive(user));
  }

  void updateAge(int age) {
    final currentState = state;
    if (currentState is UserActive) {
      final user = currentState.user.copyWith(age: age);
      emit(UserActive(user));
    }
  }

  void addProfession() {
    final currentState = state;
    if (currentState is UserActive) {
      final professions = [...currentState.user.professions, 'Profession ${currentState.user.professions.length + 1}'];
      final user = currentState.user.copyWith(professions: professions);
      emit(UserActive(user));
    }
  }

  void deleteUser() {
    emit(UserInitial());
  }
}
