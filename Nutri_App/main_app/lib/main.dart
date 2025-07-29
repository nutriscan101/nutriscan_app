import 'package:flutter/material.dart';
import 'package:main_app/Calende.dart';
import 'Calende.dart';

void main() {
  runApp(Nutri());
}

class Nutri extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: 'NutriScan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150,
        title: Row(
          children: [
            Image.asset('assets/images/appbarlogo.png', height: 30),
            const SizedBox(width: 8),
            Text(
              "NutriScan",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Calender(),
      );
  }
}
