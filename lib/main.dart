import 'package:calc_io/MyProviders/alphabets_sum.dart';
import 'package:calc_io/MyProviders/calculator_provider.dart';
import 'package:calc_io/Screens/init_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CalculateProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AlphabetsProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const InitHomeScreen(),
    );
  }
}
