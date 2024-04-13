import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widget/CustomFloatingActionButton.dart';
import '../widget/RowDataToday.dart';

class pieChartPage extends StatefulWidget {
  const pieChartPage({Key? key}) : super(key: key);

  @override
  State<pieChartPage> createState() => _pieChartPageState();
}

class _pieChartPageState extends State<pieChartPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat();

  final colorList = <Color>[Colors.red, Colors.blue, Colors.green];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          PieChart(
            chartType: ChartType.ring,
            chartRadius: 130,
            animationDuration: const Duration(seconds: 2),
            colorList: colorList,
            legendOptions:
                const LegendOptions(legendPosition: LegendPosition.left),
            dataMap: const {
              'Total': 695289957,
              'Recovered': 667302423,
              'Death': 69155596,
            },
            chartValuesOptions:
              const  ChartValuesOptions(showChartValuesInPercentage: true),
          ),
          const SizedBox(
            height: 40,
          ),
       const   RowDataTodat(),
          const SizedBox(
            height: 30,
          ),
          // const CustomButton()
        ],
      )),
      floatingActionButton:const CustomFloatingActionButton(),
    );
  }
}
