// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class info_Data extends StatelessWidget {
   info_Data({Key? key,required this.title,required this.number}) : super(key: key);

  String title;
  int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Text(
            title,
            style:const TextStyle(color: Colors.black, fontSize: 20),
          ),
          Text(
           number.toString(),
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
