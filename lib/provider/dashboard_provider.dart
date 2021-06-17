import 'dart:convert';

import 'package:currency_lookup/services/restApi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class DashboardProvider extends ChangeNotifier {
  RestAPI restAPI = RestAPI();

  Map<String, dynamic> ratess = Map<String, dynamic>();

  List<RateData> weightData = <RateData>[];

  String eur = "";
  String askedCurrency = "";
  String askedCode = "";

  dashboardData() async {
    Response response = await restAPI.getDashboardData();

    if (response.statusCode == 200 || response.statusCode == 201) {
      Map<String, dynamic> map = json.decode(response.body);

      ratess = map["rates"];
      eur = map["base"];

      ratess.forEach((k, v) =>
          weightData.add(RateData(code: k.toString(), value: v.toString())));

      print(ratess);

      notifyListeners();
    }
  }

  void getCurrency(String value) {
    askedCurrency = "";

    weightData.forEach((element) {
      if (element.code.toLowerCase() == value.toLowerCase()) {
        askedCurrency = element.value.toString();
        askedCode = element.code.toString();
      }
    });

    if (askedCurrency == "") {
      askedCurrency = "Invalid Code!!";
    }

    notifyListeners();
  }
}

class RateData {
  final String code;
  final String value;

  RateData({required this.code, required this.value});
}
