

import 'package:flutter/widgets.dart';

class TotallyData extends StatelessWidget {
  const TotallyData({ required this.State,required this.Num,
    Key? key,
  }) : super(key: key);

final  String State;
 final int Num;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
           State,
            style:const TextStyle(fontSize: 18),
          ),
          Text(
            Num.toString(),
            style:const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
