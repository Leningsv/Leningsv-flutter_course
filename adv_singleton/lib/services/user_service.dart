import 'dart:async';

import 'package:adv_singleton/models/user_model.dart';

class _UserService {
  UserModel _user;

  // broadcast para que pueda emitir a varions y no sea con una unica subscripcion
  StreamController<UserModel> _userStreamController = new StreamController<UserModel>.broadcast();

  Stream<UserModel> get userStream => _userStreamController.stream;

  UserModel get user => _user;

  bool get existUser => (this._user != null) ? true : false;

  set user(UserModel value) {
    _user = value;
    this._userStreamController.add(this._user);
  }

  void updateUserAge(int userAge) {
    this.user.age = userAge;
    this._userStreamController.add(this._user);
  }

  dispose() {
    this._userStreamController?.close();
  }
}

final userService = new _UserService();
