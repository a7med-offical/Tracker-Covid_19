
import 'package:covid_tracker/View/homeView.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.orange[200],
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
    );
  }
}
