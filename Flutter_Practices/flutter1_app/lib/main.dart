import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    theme.textTheme.headlineMedium;
    return MaterialApp(home: Home(), debugShowCheckedModeBanner: false);
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),

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
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Text(
            "Hello PD",
            style: Theme.of(context).textTheme.headlineSmall,

            // fontSize: 20,
            // fontWeight: FontWeight.bold,
            // fontFamily: 'Times New Romen',
            // color: Colors.white,
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('New Drawer')),
            ListTile(title: Text('Home')),
            ListTile(title: Text('Settings')),
          ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => layouts()),
          );
        },
        child: Icon(Icons.plus_one_outlined),
      ),
    );
  }
}
