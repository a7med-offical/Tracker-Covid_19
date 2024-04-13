import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/DataProvider.dart';
import 'View/Details_Country.dart';
import 'model/CovidModel.dart';
import 'service/DataService.dart';
import 'widget/card_Search.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataProvider>(context);
    return FutureBuilder<Covid19_Model>(
      future: DataService().getData(countryName: data.NameOfCountry),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          final dataPass = snapshot.data!;
          return GestureDetector(
              onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsPage(model:snapshot.data!,))));
      },
            child: CardSearch(
             
              image: dataPass.flagImage,
               NameCountry: dataPass.country,
               cases: dataPass.cases,
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
