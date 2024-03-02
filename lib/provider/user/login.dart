import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/services/dio_interceptors.dart';
import 'package:cloud_funding/services/local_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginState extends ChangeNotifier {
  String? email;
  String? password;

  Dio dio = dioService();

  onEmailChanged(value) {
    email = value;
    notifyListeners();
  }

  onPassWordChanged(value) {
    password = value;
    notifyListeners();
  }

  bool isLoading = false;

  login() async {
    isLoading = true;
    notifyListeners();
    var data = {'email': email, 'password': password};
    try {
      var response = await dio.post('/auth/login', data: data);
      localStorage.write('token', response.data["token"]);
      var accessTkn = localStorage.read('token');
      print(accessTkn);
      navigatorKey.currentState!.pushReplacementNamed('/profile');
    } on DioException catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }
}
