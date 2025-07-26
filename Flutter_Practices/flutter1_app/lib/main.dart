import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            "This is App Bar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Times New Romen',
              color: Colors.white,
              wordSpacing: -2,
            ),
          ),
          actions: [Icon(Icons.logout)],
          backgroundColor: const Color.fromARGB(255, 218, 123, 116),
          elevation: 0,
        ),
        body: Center(
          child: Container(
            height: 150,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 0, 0, 0),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 164, 119, 119),
            ),
            child: Text(
              "HELLO PD",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Romen',
                color: Colors.white,
              ),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 202, 144, 140),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 86, 138, 227),
              ),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 204, 150, 146),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.carpenter),
              activeIcon: Icon(Icons.carpenter),
              label: 'Cart',
              backgroundColor: Color.fromARGB(255, 180, 139, 136),
            ),
          ],
        ),
      ),
    );
  }
}
