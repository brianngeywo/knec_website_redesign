import 'package:flutter/material.dart';
import 'package:knec_website_redesign/home_page.dart';
import 'package:knec_website_redesign/home_page2.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 70,
        // leading: const Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: Center(
        //     child: Icon(
        //       Icons.account_circle_sharp,
        //       size: 40,
        //     ),
        //   ),
        // ),
        title: Image.asset("assets/knec_logo.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        onTap: (val) {
          setState(() {
            _currentPage = val;
          });
        },
        currentIndex: _currentPage,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.home),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.phone_android),
            ),
            label: "Online services",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.newspaper),
            ),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.save),
            ),
            label: "Downloads",
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentPage,
        children: const [
          MyHomePage(),
          MySecondHomePage(),
          MySecondHomePage(),
          MySecondHomePage(),
        ],
      ),
    );
  }
}
