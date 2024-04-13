import 'package:covid_tracker/widget/TotallyWidget.dart';
import 'package:flutter/material.dart';

class RowDataTodat extends StatelessWidget {
  const RowDataTodat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        color: Colors.amber[100],
        child: const Column(
          children: [
            SizedBox(
              height: 15,
            ),
            TotallyData(State: 'Today Cases', Num: 2159),
            SizedBox(
              height: 30,
            ),
            TotallyData(State: 'Today Deaths', Num: 18),
            SizedBox(
              height: 30,
            ),
            TotallyData(State: 'Today Recovered', Num: 16994),
            SizedBox(
              height: 30,
            ),
            TotallyData(State: 'Today Critical', Num: 37939),
            SizedBox(
              height: 30,
            ),
            TotallyData(State: 'Today Active', Num: 21071938),
            SizedBox(
              height: 30,
            ),
            TotallyData(State: 'Tests', Num: 7021906977),
            SizedBox(
              height: 30,
            ),
            TotallyData(State: 'Affected Countries', Num: 231),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
