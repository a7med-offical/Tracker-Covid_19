import 'package:covid_tracker/Provider/DataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/CovidModel.dart';
import '../service/DataService.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) async {
              DataProvider provider =
                  Provider.of<DataProvider>(context, listen: false);
              provider.getNameOfCountry(value);
              List<Covid19_Model> Covid =
                  (await DataService().getData(countryName: value)) as List<Covid19_Model>;

              provider.geyDiseaseList(Covid );
            },
            decoration: InputDecoration(
                hintText: 'Search about country',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ],
    );
  }
}
