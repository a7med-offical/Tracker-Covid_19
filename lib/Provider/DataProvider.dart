import 'package:flutter/material.dart';
import '../model/CovidModel.dart';
class DataProvider extends ChangeNotifier {
  String NameOfCountry = '';

  List<Covid19_Model> dataList = [];
  geyDiseaseList(List<Covid19_Model> ListData) {
    dataList = ListData;
    notifyListeners();
  }

  getNameOfCountry(String name) {
    NameOfCountry = name;
    notifyListeners();
  }
}
