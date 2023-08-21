import 'package:flutter/material.dart';

class MySecondHomePage extends StatefulWidget {
  const MySecondHomePage({super.key});

  @override
  State<MySecondHomePage> createState() => _MySecondHomePageState();
}

class _MySecondHomePageState extends State<MySecondHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Second home page',
            ),

          ],
        ),
      ),
    );
  }
}
