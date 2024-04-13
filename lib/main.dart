import 'package:covid_tracker/View/splash_screen.dart';
import 'package:flutter/material.dart';
import 'Provider/DataProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => DataProvider(), child: const Covid_19App()));
}

class Covid_19App extends StatelessWidget {
  const Covid_19App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid_19App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(background: Colors.blueAccent),
      ),
      home: const SplashScreen(),
    );
  }
}
