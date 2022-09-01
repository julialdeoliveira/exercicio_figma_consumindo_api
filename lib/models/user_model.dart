import 'dart:convert';

class UserModel {
  int id;
  String name;
  String email;
  String password;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  
  

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'email': email});
    result.addAll({'password': password});
  
    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['Id']?.toInt() ?? 0,
      name: map['Name'] ?? '',
      email: map['Email'] ?? '',
      password: map['Password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
