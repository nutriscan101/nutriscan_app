import 'package:flutter/material.dart';
import 'HomePageAll/HomePage.dart';
import 'SignUp_and_Login/Signup.dart';

void main() {
  runApp(Nutri());
}

class Nutri extends StatefulWidget {
  @override
  State<Nutri> createState() => _NutriState();
}

class _NutriState extends State<Nutri> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NutriScan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),

      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      //toggleTheme: () => context
      home: Signup(),
    );
  }
}
