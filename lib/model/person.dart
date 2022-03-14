import 'package:cloud_firestore/cloud_firestore.dart';

class Person {
  String id;
  String password;
  String nickname;
  String phoneNum;
  String email;
  int auth;
  String icon;
  Timestamp joinDate;
  Timestamp modifyDate;
  String diagnosisResult;

  Person(
      this.id,
      this.password,
      this.nickname,
      this.phoneNum,
      this.email,
      this.auth,
      this.joinDate,
      this.modifyDate,
      this.icon,
      this.diagnosisResult);

  Person.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        password = map['password'],
        nickname = map['nickname'],
        phoneNum = map['phoneNum'],
        email = map['email'],
        auth = map['auth'],
        joinDate = map['joinDate'],
        icon = map['icon'],
        diagnosisResult = map['diagnosisResult'],
        modifyDate = map['modifyDate'];

  @override
  String toString() => "Person<$id:$nickname>";
}
