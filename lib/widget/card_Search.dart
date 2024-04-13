import 'package:flutter/material.dart';

class CardSearch extends StatelessWidget {
  const CardSearch(
      {Key? key,
      required this.image,
      required this.NameCountry,
      required this.cases})
      : super(key: key);
  final String image;
  final String NameCountry;
  final int cases;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 100,
        decoration: const BoxDecoration(color: Colors.transparent, boxShadow: [
          BoxShadow(
              blurRadius: 10, offset: Offset.zero, color: Colors.transparent)
        ]),
        child: Row(
          children: [
            Image.network(
              image,
              height: 60,
            ),
            const SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  NameCountry,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  cases.toString(),
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
