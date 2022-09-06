import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class LogonAuthenticator {
  static Future<UserModel> userLogin(String email, String password) async {
    UserModel user = UserModel(id: 0, name: '', email: '', password: '');
    try {
      final dio = Dio();
      Map<String, dynamic> myMap = {
        "email": email,
        "password": password,
      };

      final response = await dio.post(
        "http://192.168.0.138/api/Acess/Logon",
        data: jsonEncode(myMap),
      );
      if (response.statusCode == 200) {
        user = UserModel.fromMap(jsonDecode(response.data));
        return user;
      }

























      
    } catch (e) {
      debugPrint('$e');
    }
    return user;
  }
}
