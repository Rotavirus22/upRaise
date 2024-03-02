import 'package:cloud_funding/provider/home/addCharityState.dart';
import 'package:cloud_funding/provider/home/addEquity.dart';
import 'package:cloud_funding/provider/home/getEquity.dart';
import 'package:cloud_funding/provider/home/homeState.dart';
import 'package:cloud_funding/provider/home/requestInvestment.dart';
import 'package:cloud_funding/provider/splash/splashState.dart';
import 'package:cloud_funding/provider/user/login.dart';
import 'package:cloud_funding/provider/user/register.dart';
import 'package:cloud_funding/screens/features/addCharity.dart';
import 'package:cloud_funding/screens/features/addEquityRaise.dart';
import 'package:cloud_funding/screens/features/addInvestment.dart';
import 'package:cloud_funding/screens/home/detailPage.dart';
import 'package:cloud_funding/screens/home/impSection.dart';
import 'package:cloud_funding/screens/landing.dart';
import 'package:cloud_funding/screens/splash/splashScreen.dart';
import 'package:cloud_funding/screens/user/login_screen.dart';
import 'package:cloud_funding/screens/user/register_screen.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().lightTheme,
      navigatorKey: navigatorKey,
      initialRoute: '/',
      routes: {
        '/login': (context) => ChangeNotifierProvider(
              create: (_) => LoginState(),
              child: LoginScreen(),
            ),
        '/register': (context) => ChangeNotifierProvider(
              create: (_) => RegisterState(),
              child: RegisterScreen(),
            ),
        '/profile': (context) => MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (_) => HomeState(),
                ),
                ChangeNotifierProvider(
                  create: (_) => EquityState(),
                ),
              ],
              child: BottomNavigationScreen(),
            ),
        '/addEquity': (context) => ChangeNotifierProvider(
              create: (_) => AddEquityState(),
              child: AddEquityScreen(),
            ),
        '/detailPage': (context) => DetailPage(),
        '/requestEquity': (context) => ChangeNotifierProvider(
              create: (_) => ReqInvestState(context),
              child: AddInvestmentScreen(),
            ),
        '/landing': (context) => LandingPage(),
        '/': (context) => ChangeNotifierProvider(
              create: (_) => SplashState(),
              child: SplashScreen(),
            ),
        '/addCharity': (context) => ChangeNotifierProvider(
              create: (_) => AddCharityState(),
              child: AddCharity(),
            )
      },
    );
  }
}
