import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/provider/home/addCharityState.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddCharity extends StatelessWidget {
  const AddCharity({super.key});

  @override
  Widget build(BuildContext context) {
    final addCharityState = Provider.of<AddCharityState>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: SizedBox(
              child: TextField(
                onChanged: addCharityState.onTitleChanged,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.percent),
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: SizedBox(
              child: TextField(
                onChanged: addCharityState.onDescriptionChanged,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on),
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: SizedBox(
              child: TextField(
                onChanged: addCharityState.onCharityAmountChanged,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on),
                  border: OutlineInputBorder(),
                  labelText: 'Charity Amount',
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          MaterialButton(
            color: appPrimaryColor,
            onPressed: () {
              addCharityState.raiseCharity();
              navigatorKey.currentState!.pushReplacementNamed('/profile');
            },
            child: addCharityState.isLoading
                ? CircularProgressIndicator()
                : Text('Request'),
          )
        ],
      ),
    );
  }
}
