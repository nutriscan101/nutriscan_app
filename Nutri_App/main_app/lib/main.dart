import 'package:flutter/material.dart';
import 'package:main_app/homepage_Components/Calender.dart';
import 'package:main_app/homepage_Components/Calories_Banner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/homepage_Components/fat-carbs.dart';

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
        title: Row(
          children: [
            Image.asset('assets/images/appbarlogo.png', height: 30),
            const SizedBox(width: 8),
            Text(
              "NutriScan",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [Calender(), Calories(), SizedBox(height: 10), fatcarbs()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_increase),
            activeIcon: Icon(Icons.home),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            activeIcon: Icon(Icons.history),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
