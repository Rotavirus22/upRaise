import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CharityScreen extends StatelessWidget {
  const CharityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: appPrimaryColor,
        onPressed: () {
          navigatorKey.currentState!.pushNamed('/addCharity');
        },
      ),
      body: Center(
        child: Text('Click on the button to add charity'),
      ),
    );
  }
}
