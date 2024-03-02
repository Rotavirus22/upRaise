import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/services/local_storage.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Center(
        child: MaterialButton(
          onPressed: () {
            localStorage.remove('token');
            navigatorKey.currentState!.pushReplacementNamed('/landing');
          },
          child: Text('Logout'),
        ),
      )),
    );
  }
}
