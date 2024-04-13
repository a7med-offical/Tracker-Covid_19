import 'dart:async';
import 'package:covid_tracker/View/pie_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as maths;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const pieChartPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Center(
                    child: Image.asset('images/virus.png'),
                  ),
                ),
                animation: _controller,
                builder: (contex, Widget? child) {
                  return Transform.rotate(
                      child: child, angle: _controller.value * 2.0 * maths.pi);
                }),
            const SizedBox(
              height: 40,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  '  Covid-19 \nTracker App',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
