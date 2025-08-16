import 'package:flutter/material.dart';
import 'package:main_app/Profile/Edit_profile.dart';
import 'HomePageAll/HomePage.dart';
import 'SignUp_and_Login/Signup.dart';
import 'SignUp_and_Login/SignIn.dart';
import 'forgotPassword_page/forgotpass.dart';
import 'forgotPassword_page/PasswordRecovery.dart';
import 'Profile/user_profile.dart';

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
      home: UserProfile(),
    );
  }
}
