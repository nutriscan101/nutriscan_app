import 'package:flutter/material.dart';

class layouts extends StatelessWidget {
  const layouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 223, 126, 119),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.back_hand),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 123, 117),
                border: Border.all(color: Colors.black, width: 5),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 123, 117),
                border: Border.all(color: Colors.black, width: 5),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 123, 117),
                border: Border.all(color: Colors.black, width: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
