import 'package:flutter/cupertino.dart';

class UserModel {
  final String name;
  final int age;
  final List<String> professions;

  UserModel({this.name, this.age, this.professions});

  UserModel copyWith({
    @required String name,
    int age,
    List<String> professions,
  }) =>
      new UserModel(
        name: name ?? this.name,
        age: age ?? this.age,
        professions: professions ?? this.professions,
      );
}
