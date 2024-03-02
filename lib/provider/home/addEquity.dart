import 'dart:io';

import 'package:cloud_funding/main.dart';
import 'package:cloud_funding/services/dio_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddEquityState extends ChangeNotifier {
  Dio dio = dioService();
  String? documentUrl;
  String? logoUrl;
  File? document;
  File? logo;
  String? title;
  String? companyName;
  double? valuation;
  String? panNumber;
  double? equityPercentage;
  double? equityAmount;
  String? companyDescription;
  String? description;
  String? endDate;
  String? establish;

  bool isLoading = false;

  onTitleChanged(value) {
    title = value;
    notifyListeners();
  }

  onValuationChanged(String value) {
    double parsedValue = double.parse(value);
    valuation = parsedValue;
    notifyListeners();
  }

  onCompanyNameChanged(value) {
    companyName = value;
    notifyListeners();
  }

  onPanNumberChanged(String value) {
    panNumber = value;
    notifyListeners();
  }

  onEquityPercentageChanged(String value) {
    double parsedValue = double.parse(value);
    equityPercentage = parsedValue;
    notifyListeners();
  }

  onEquityAmountChanged(String value) {
    double parsedValue = double.parse(value);
    equityAmount = parsedValue;
    notifyListeners();
  }

  onCompanyDescriptionChanged(value) {
    companyDescription = value;
    notifyListeners();
  }

  onDescriptionChanged(value) {
    description = value;
    notifyListeners();
  }

  onEndDateChanged(value) {
    endDate = value;
    notifyListeners();
  }

  onCompanyEstablishChanged(value) {
    establish = value;
    notifyListeners();
  }

  Future<void> pickImage(ImageSource source, Function(File) setImage) async {
    var picker = ImagePicker();
    var pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setImage(File(pickedImage.path));
      notifyListeners();
    }
  }

  void pickLogoImage(ImageSource source) {
    pickImage(source, (File image) => logo = image);
  }

  void pickDocumentImage(ImageSource source) {
    pickImage(source, (File image) => document = image);
  }

  addEquity() async {
    isLoading = true;
    notifyListeners();
    var data = {
      'title': title,
      'equityPercentage': equityPercentage,
      'description': description,
      'endDate': endDate,
      'name': companyName,
      'companyDescription': companyDescription,
      'valuation': valuation,
      // 'document': document,
      'panNumber': panNumber,
      'equityAmount': equityAmount,
      'establishment': establish,
    };
    try {
      var response = await dio.post('/fund/raise-fund', data: data);
      navigatorKey.currentState!.pushNamed('/profile');
    } on DioException catch (e) {
      print(e);
    }
  }
}
