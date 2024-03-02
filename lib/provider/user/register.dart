import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/services/dio_interceptors.dart';
import 'package:cloud_funding/services/local_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RegisterState extends ChangeNotifier {
  String? name;
  String? email;
  String? contactNumber;
  String? password;

  Dio dio = dioService();

  onNameChanged(value) {
    name = value;
    notifyListeners();
  }

  onEmailChanged(value) {
    email = value;
    notifyListeners();
  }

  onContactNumberChanged(value) {
    contactNumber = value;
    notifyListeners();
  }

  onPasswordChanged(value) {
    password = value;
    notifyListeners();
  }

  bool isLoading = false;

  register() async {
    isLoading = true;
    notifyListeners();
    var data = {
      'name': name,
      'email': email,
      'contactNumber': contactNumber,
      'password': password
    };
    try {
      var response = await dio.post('/auth/registration', data: data);
      localStorage.write('token', response.data["token"]);
      var accessTkn = localStorage.read('token');
      print(accessTkn);
      navigatorKey.currentState!.pushReplacementNamed('/login');
    } on DioException catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }
}
