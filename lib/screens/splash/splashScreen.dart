import 'package:cloud_funding/provider/splash/splashState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashState = Provider.of<SplashState>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: SizedBox(
                child: Row(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
