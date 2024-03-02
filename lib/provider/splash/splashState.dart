import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/services/local_storage.dart';
import 'package:flutter/material.dart';

class SplashState extends ChangeNotifier {
  SplashState() {
    var accessTkn = localStorage.read('token');
    Future.delayed(const Duration(seconds: 2), () {
      goToNext();
    });
  }

  goToNext() {
    var accessTkn = localStorage.read('token');
    if (accessTkn == null) {
      navigatorKey.currentState!.pushReplacementNamed('/landing');
    } else {
      navigatorKey.currentState!.pushReplacementNamed('/profile');
    }
  }
}
