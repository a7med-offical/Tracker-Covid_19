



import 'package:covid_tracker/model/CovidModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Row_InfoData extends StatelessWidget {
  const Row_InfoData({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Covid19_Model model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            model.flagImage,
            height: 70,
          ),
        ),
        Column(
          children: [
            Text(model.cases.toString(), style: const TextStyle(
                           fontWeight: FontWeight.bold,

          color: Colors.black,
          fontSize: 30),),
             const Text('Cases', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25),)
          ],
        )
      ],
    );
  }
}
