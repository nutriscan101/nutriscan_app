import 'package:flutter/material.dart';
import 'package:main_app/homepage_Components/Calender.dart';
import 'package:main_app/homepage_Components/calories_banner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/homepage_Components/fat-carbs.dart';
import 'package:main_app/homepage_Components/healthy-drink-food.dart';

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
        children: [
          Calender(),
          Calories(),
          SizedBox(height: 10),
          fatcarbs(),
          SizedBox(height: 10),
          Healthydf(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        iconSize: 24,
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
            icon: Image.asset('assets/images/scan.png', height: 49),
            activeIcon: Image.asset('scan.png'),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            activeIcon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
