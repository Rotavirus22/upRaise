import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late final PageController pageController;
  int pageNo = 0;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 260),
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Skip',
                    style: AppTheme()
                        .lightTheme
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: appPrimaryColor),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 404,
              width: 331,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  pageNo = index;
                  setState(() {});
                },
                itemBuilder: (_, index) {
                  return AnimatedBuilder(
                    animation: pageController,
                    builder: (context, child) {
                      return child!;
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 196,
                          width: 210,
                          margin: EdgeInsets.all(24),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                '',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 120,
                          width: 330,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    'Better Way to raise fund is calling you!',
                                    style: AppTheme()
                                        .lightTheme
                                        .textTheme
                                        .bodyLarge,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 3,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.circle,
                    color: pageNo == index
                        ? AppTheme().lightTheme.primaryColor
                        : avatarBackgroundColor,
                    size: 8,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: appPrimaryColor,
              onPressed: () {
                navigatorKey.currentState!.pushNamed('/login');
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                navigatorKey.currentState!.pushReplacementNamed('/register');
              },
              child: Text('Register'),
              color: appPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
