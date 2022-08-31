import 'package:dio/dio.dart';

import '../models/user_model.dart';

class UserRepository {
  final Dio dio;
  UserRepository(this.dio);

  Future<List<UserModel>> getAllUsers() async {
    List<UserModel> users = [];

    final response = await dio.get('http://192.168.0.138/api/Usuario');
    print(response.data);

    users = List.from(
      response.data.map((user) {
        return UserModel.fromMap(user);
      }),
    );
    return users;
  }

  static Future<String?> createUser(UserModel model) async {
    final dio = Dio();
    final response = await dio.post(
      'http://192.168.0.138/api/Usuario',
      data: {
        "email": model.email,
        "password": model.password,
        "name": model.name,
        "id": 0,
      },
    );
    return null;
  }

  // Future <UserModel> loginUser(String email, String password) async{
  //   final dio = Dio();
  //   final reponse = await dio.post(
  //     'http://192.168.0.138/api/Usuario',
  //     d
  //   );

  }



