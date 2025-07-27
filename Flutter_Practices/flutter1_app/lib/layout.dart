import 'package:flutter/material.dart';

class layouts extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
