import 'package:covid_tracker/View/homeView.dart';
import 'package:covid_tracker/model/CovidModel.dart';
import 'package:covid_tracker/widget/Row_infoData.dart';
import 'package:flutter/material.dart';

// import '../widget/NowDaysInfo.dart';
import 'info_country.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.model}) : super(key: key);
  final Covid19_Model model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange[200],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      backgroundColor: Colors.orange[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.country,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              model.iso3,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                model.continent,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.blueGrey),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row_InfoData(model: model),
            const SizedBox(
              height: 30,
            ),
            info_Data(
              number: model.deaths,
              title: 'Death People',
            ),
            const SizedBox(
              height: 15,
            ),
            info_Data(
              number: model.active,
              title: 'Active People',
            ),
            const SizedBox(
              height: 15,
            ),
            info_Data(
              number: model.recovered,
              title: 'Recoverd People',
            ),
            const SizedBox(
              height: 25,
            ),
            info_Data(
              number: model.tests,
              title: 'Test People',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[300],
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(style: BorderStyle.none)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const HomeView();
          }));
        },
        tooltip: 'Search',
        child: const Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
