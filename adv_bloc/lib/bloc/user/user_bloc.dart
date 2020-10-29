import 'dart:async';

import 'package:adv_bloc/models/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    print(event);
    if (event is ActiveUser) {
      yield state.copyWith(user: event.user);
    } else if (event is UpdateAge) {
      yield state.copyWith(user: state.user.copyWith(age: event.age));
    } else if (event is AddProfession) {
      final professions = [...state.user.professions, '${event.profession} ${state.user.professions.length + 1}'];
      yield state.copyWith(user: state.user.copyWith(professions: professions));
    } else if (event is DeleteUser) {
      yield state.initial();
    }
  }
}
