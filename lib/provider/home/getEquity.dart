import 'package:cloud_funding/models/fundModel.dart';
import 'package:cloud_funding/models/myfundModel.dart';
import 'package:cloud_funding/services/dio_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class EquityState extends ChangeNotifier {
  EquityState() {
    getAllEquity();
  }
  Dio dio = dioService();
  bool isLoading = false;

  FundModel? fundModel;
  MyFundModel? myFund;

  getAllEquity() async {
    isLoading = true;
    notifyListeners();
    try {
      var response = await dio.get('/fund/all');
      fundModel = FundModel.fromJson(response.data);
      print(fundModel);
    } on DioException catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }

  getMyEquity() async {
    isLoading = true;
    notifyListeners();
    try {
      var response = await dio.get('/fund/get-my-fund');
      myFund = MyFundModel.fromJson(response.data);
    } on DioException catch (e) {
      print(e);
    }
  }
}
