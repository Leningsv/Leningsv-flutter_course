import 'package:adv_provider/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class UserService with ChangeNotifier {
  UserModel _user;

  UserModel get user => _user;

  bool get existUser => this._user != null ? true : false;

  set user(UserModel value) {
    _user = value;
    notifyListeners();
  }

  void updateAge(int age) {
    this._user.age = age;
    notifyListeners();
  }

  void deleteUser() {
    this._user = null;
    notifyListeners();
  }

  void addProfession() {
    this._user.professions.add('Profession ${this._user.professions.length + 1}');
    notifyListeners();
  }
}
