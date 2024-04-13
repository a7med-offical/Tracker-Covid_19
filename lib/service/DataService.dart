import 'dart:convert';

import '../model/CovidModel.dart';
import 'package:http/http.dart' as http;

class DataService {
 Future<Covid19_Model> getData({required String countryName}) async {
  http.Response response = await http.get(Uri.parse(
      'https://disease.sh/v3/covid-19/countries/$countryName'));

  if (response.statusCode == 200) {
    dynamic data = jsonDecode(response.body);
    Covid19_Model covidData = Covid19_Model.fromJson(data);
    return covidData;
  } else {
    throw Exception('Not Found');
  }
}
}
