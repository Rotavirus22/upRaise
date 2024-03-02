import 'package:cloud_funding/services/dio_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  PageController pageController = PageController();

  Dio dio = dioService();
  int currentValue = 0;
  bool isLoading = false;

  onPageChanged(value) {
    currentValue = value;
    notifyListeners();
  }

  onTap(value) {
    currentValue = value;
    notifyListeners();
  }
}
