import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/provider/home/requestInvestment.dart';
import 'package:cloud_funding/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddInvestmentScreen extends StatelessWidget {
  const AddInvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reqInvestState = Provider.of<ReqInvestState>(context);
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(65), child: AppBar()),
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
                onChanged: reqInvestState.onEquityPercentChanged,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.percent),
                  border: OutlineInputBorder(),
                  labelText: 'EquityPercentage',
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
                onChanged: reqInvestState.onEquityAmountChanged,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on),
                  border: OutlineInputBorder(),
                  labelText: 'EquityAmount',
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          MaterialButton(
            color: appPrimaryColor,
            onPressed: () {
              reqInvestState.requestInvest();
              navigatorKey.currentState!.pushNamed('/profile');
            },
            child: reqInvestState.isLoading ?? true
                ? CircularProgressIndicator()
                : Text('Request'),
          )
        ],
      ),
    );
  }
}
