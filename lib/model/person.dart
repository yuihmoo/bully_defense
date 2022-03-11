class Person {
  String id;
  String password;
  String nickname;
  String phoneNum;
  String email;
  String auth;
  String icon;
  List<String> likeList;
  DateTime joinDate;

  Person(this.id, this.password, this.nickname, this.phoneNum, this.email,
      this.auth, this.likeList, this.joinDate, this.icon);

  Person.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        password = map['password'],
        nickname = map['nickname'],
        phoneNum = map['phoneNum'],
        email = map['email'],
        auth = map['auth'],
        likeList = map['likeList'],
        joinDate = map['joinDate'],
        icon = map['icon'];

  @override
  String toString() => "Person<$id:$nickname>";
}
