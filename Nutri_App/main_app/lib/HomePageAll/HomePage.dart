// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:main_app/HomePageAll/Calender.dart';
import 'package:main_app/HomePageAll/calories_banner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/HomePageAll/fat-carbs.dart';
import 'package:main_app/HomePageAll/healthy-drink-food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Screenheight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/appbarlogo.png',
              height: Screenheight * 0.05,
            ),
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
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Calender(),
              Calories(),
              SizedBox(height: Screenheight * 0.02),
              fatcarbs(),
              SizedBox(height: Screenheight * 0.02),
              Healthydf(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: Colors.white.withOpacity(0.7),
        elevation: 0,
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
            icon: Image.asset('assets/images/scan.png', height: 55),
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
