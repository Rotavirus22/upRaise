import 'package:cloud_funding/services/dio_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ReqInvestState extends ChangeNotifier {
  ReqInvestState(context) {
    final args = ModalRoute.of(context)!.settings.arguments as dynamic;
    panNumber = args['panNumber'];
  }

  Dio dio = dioService();

  String? panNumber;
  double? equityPercent;
  double? equityAmount;
  bool? isLoading = false;

  onEquityPercentChanged(String value) {
    double parsedValue = double.parse(value);
    equityPercent = parsedValue;
    notifyListeners();
  }

  onEquityAmountChanged(String value) {
    double parsedValue = double.parse(value);
    equityAmount = parsedValue;
    notifyListeners();
  }

  requestInvest() async {
    isLoading = true;
    notifyListeners();
    var data = {
      'panNumber': panNumber,
      'equityPercentage': equityPercent,
      'equityAmount': equityAmount
    };
    try {
      print(panNumber);
      var response = await dio.post('/fund/propose-fund', data: data);
    } on DioException catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }
}
