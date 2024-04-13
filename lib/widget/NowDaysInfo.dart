// import 'package:covid_tracker/model/CovidModel.dart';
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NowDaysInfo extends StatelessWidget {
   NowDaysInfo({
    Key? key,
   required this.Texts,required this.num,required this.image
  }) : super(key: key);

  String image;
  String Texts;
  int num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.3),
          borderRadius: BorderRadius.circular(
            25,
          )),
      child:  Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              Texts,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
               image,
              ),
            ),
            Text(
              num.toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
