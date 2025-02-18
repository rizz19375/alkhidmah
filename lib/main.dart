import 'package:flutter/material.dart';
import 'activities.dart';
import 'prays.dart';
import 'finance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageIndex = 0;

  // List of screens with different background colors
  final List<Widget> _screens = [
    const Activities(),
    const Prays(),
    const Finance(),
  ];

  // List of icon paths for the bottom navigation
  List<String> bottomItems = [
    "assets/icons/group.png",
    "assets/icons/crescent.png",
    "assets/icons/wallet.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[pageIndex],
        bottomNavigationBar: getFooter(),
      ),
    );
  }

  // Bottom navigation bar
  PreferredSizeWidget getFooter() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10, top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              bottomItems.length,
              (index) {
                return InkWell(
                  onTap: () {
                    selectedTab(index);
                  },
                  child: Image.asset(
                    bottomItems[index],
                    width: 33,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // Change page based on the selected tab
  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}

class BlankScreen extends StatelessWidget {
  final Color color;
  final String title;

  const BlankScreen({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Column(
        children: [
          // Custom header for "Al Khidmah"
          Container(
            padding: const EdgeInsets.only(top: 70),
            alignment: Alignment.center,
            child: const Text(
              "Al Khidmah",
              style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'alhambra'),
            ),
          ),
          // Title of the current screen centered
          Expanded(
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
