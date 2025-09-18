import 'package:flutter/material.dart';
import 'package:main_app/Profile/Edit_profile.dart';
import 'package:main_app/Scanned_Output_page.dart/open_food_fact_api_call.dart';
import 'package:main_app/SignUp_and_Login/SignIn.dart';

void main() {
  runApp(Nutri());
}

class Nutri extends StatefulWidget {
  @override
  State<Nutri> createState() => _NutriState();
}

class _NutriState extends State<Nutri> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NutriScan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Signin(),
    );
  }
}
