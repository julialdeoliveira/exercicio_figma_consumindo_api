import 'package:dio/dio.dart';

import '../models/user_model.dart';

class UserRepository{
  final Dio dio;
  UserRepository(this.dio);

  Future <List<UserModel>> getAllUsers() async{
    List<UserModel> users = [];

    final response = await dio.get('http://192.168.0.142/api/Usuario');
    print(response.data);

    users = List.from(
      response.data.map(
        (user){
          return UserModel.fromMap(user);
        }
      ),
    );
    return users;
  }

}