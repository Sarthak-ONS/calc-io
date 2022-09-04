import 'package:calc_io/Screens/calculate_screens.dart';
import 'package:calc_io/Screens/developer_screen.dart';
import 'package:flutter/material.dart';

import 'alphabets_sum_screen.dart';

class InitHomeScreen extends StatefulWidget {
  const InitHomeScreen({Key? key}) : super(key: key);

  @override
  State<InitHomeScreen> createState() => _InitHomeScreenState();
}

class _InitHomeScreenState extends State<InitHomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'Calculator App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Text("Bitwise Ops")),
              Tab(icon: Text("Alphbets sum")),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeveloperScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.info_rounded),
            )
          ],
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            AlphabetSumScreen(),
          ],
        ),
      ),
    );
  }
}
