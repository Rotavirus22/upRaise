import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as dynamic;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: appPrimaryColor,
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 6, 36, 10),
                  child: Container(
                    height: 208,
                    width: 357,
                    child: Image.network(
                      'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  width: 378,
                  child: Text(
                    'Company Name :- ${args['name'] ?? ''}',
                    style: AppTheme()
                        .lightTheme
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 378,
                  child: Text(
                    'Title:- ${args['title'] ?? ''}',
                    style: AppTheme()
                        .lightTheme
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: 378,
                  child: Text(
                    'Company Description :- ${args['companyDescription'] ?? ''}',
                    style: AppTheme()
                        .lightTheme
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            color: appPrimaryColor,
            onPressed: () => {
              navigatorKey.currentState!
                  .pushReplacementNamed('/requestEquity', arguments: {
                'pan': args['panNumber'],
              }),
            },
            child: Text('Request an investment'),
          ),
        ],
      ),
    );
  }
}
