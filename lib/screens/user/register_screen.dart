import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/provider/user/register.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final registerState = Provider.of<RegisterState>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
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
                  height: 100,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 15),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: registerState.onNameChanged,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'FullName is required';
                    }
                  },
                  autocorrect: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    label: Text(
                      'Full Name',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 15),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: registerState.onEmailChanged,
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
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 15),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: registerState.onContactNumberChanged,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Contact Number is required';
                    }
                  },
                  autocorrect: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                    label: Text(
                      'Contact Number',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(fontSize: 15),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: registerState.onPasswordChanged,
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
                          registerState.register();
                        },
                        child: registerState.isLoading
                            ? CircularProgressIndicator()
                            : Text('Register'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("Already have an account?"),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        navigatorKey.currentState!
                            .pushReplacementNamed('/login');
                      },
                      child: Text(
                        "Signin here!",
                        style: TextStyle(
                            color: appPrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
