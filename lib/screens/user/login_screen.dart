import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/provider/user/login.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginState = Provider.of<LoginState>(context);
    return Scaffold(
        body: Form(
            child: Padding(
      padding: EdgeInsets.all(12),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Up',
                  style: TextStyle(
                      fontFamily: 'Cursive',
                      fontSize: 40,
                      color: Color(0Xff4BDBC1),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Raise',
                  style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 40,
                      color: Color(0Xff4BDBC1),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              style: TextStyle(fontSize: 15),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: loginState.onEmailChanged,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                }
              },
              autocorrect: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                label: Text(
                  'Email',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            TextFormField(
              style: TextStyle(fontSize: 15),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: loginState.onPassWordChanged,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
              },
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                label: Text(
                  'Password',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(0, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: appPrimaryColor),
                    onPressed: () {
                      loginState.login();
                    },
                    child: loginState.isLoading
                        ? CircularProgressIndicator()
                        : Text('Login'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 21),
            Row(
              children: [
                Text("Don't have an account?"),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    navigatorKey.currentState!
                        .pushReplacementNamed('/register');
                  },
                  child: Text(
                    "Signup here!",
                    style: TextStyle(
                        color: appPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    )));
  }
}
