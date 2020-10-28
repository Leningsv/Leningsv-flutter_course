import 'package:flutter/cupertino.dart';

class UserModel {
  String name;
  int age;
  List<String> professions;

  UserModel({@required this.name, this.age, this.professions})
      : assert(name != null),
        assert(age > 0);
}
