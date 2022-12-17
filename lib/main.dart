import 'package:flutter/material.dart';
import 'package:kunjui/screens/home_page.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'SF',
        scaffoldBackgroundColor: ScaffoldBackgroundColor,
      ),
      darkTheme: ThemeData(
        fontFamily: 'SF',
        scaffoldBackgroundColor: ScaffoldBackgroundColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
