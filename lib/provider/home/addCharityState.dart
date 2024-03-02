import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/services/dio_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AddCharityState extends ChangeNotifier {
  String? title;
  double? charityAmount;
  String? description;

  bool isLoading = false;
  Dio dio = dioService();

  onTitleChanged(value) {
    title = value;
    notifyListeners();
  }

  onCharityAmountChanged(value) {
    var parsedValue = double.parse(value);
    charityAmount = parsedValue;
    notifyListeners();
  }

  onDescriptionChanged(value) {
    description = value;
    notifyListeners();
  }

  raiseCharity() async {
    isLoading = true;
    notifyListeners();
    var data = {
      'title': title,
      'charityAmount': charityAmount,
      'description': description
    };
    try {
      var response = await dio.post('/charity', data: data);
      navigatorKey.currentState!.pushReplacementNamed('/profile');
    } on DioException catch (e) {
      print(e);
    }
  }
}
