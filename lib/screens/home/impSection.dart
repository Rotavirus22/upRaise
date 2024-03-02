import 'package:cloud_funding/provider/home/homeState.dart';
import 'package:cloud_funding/screens/home/homeButton/charity.dart';
import 'package:cloud_funding/screens/home/homeButton/equityRaise.dart';
import 'package:cloud_funding/screens/home/homeButton/home.dart';
import 'package:cloud_funding/screens/home/homeButton/profileScreen.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeState = Provider.of<HomeState>(context);
    List<Widget> pages = [
      HomeScreen(),
      EquityRaiseScreen(),
      CharityScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      // bottomNavigationBar: ,
      body: pages[homeState.currentValue],
      bottomNavigationBar: BottomNavigationBar(
        onTap: homeState.onTap,
        type: BottomNavigationBarType.fixed,
        iconSize: 26.0,
        currentIndex: homeState.currentValue,
        backgroundColor: appPrimaryColor,
        unselectedIconTheme: IconThemeData(color: Colors.white),
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 50,
              child: Icon(
                Icons.home,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 50,
              child: Icon(
                Icons.playlist_play,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 50,
              child: Icon(
                Icons.money,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 50,
              child: Icon(
                Icons.person_outline_outlined,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
