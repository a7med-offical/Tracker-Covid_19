import 'package:flutter/material.dart';

import '../SearchView.dart';
import '../widget/custom_Text_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios,color: Colors.black,) ,onPressed: () {
          Navigator.pop(context);
        },),
        backgroundColor: Colors.transparent,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            CustomTextField(),
            SizedBox(height: 20),
            SearchView(), // Wrap SearchView with Expanded
          ],
        ),
      ),
    );
  }
}
