
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/CovidModel.dart';

class allService
{
   Future<Covid19_Model> getData() async {
  http.Response response = await http.get(Uri.parse(
      'https://disease.sh/v3/covid-19/all'));

  if (response.statusCode == 200) {
    dynamic data = jsonDecode(response.body);
    Covid19_Model covidData = Covid19_Model.fromJson(data);
    return covidData;
  } else {
    throw Exception('Not Found');
  }
}
}