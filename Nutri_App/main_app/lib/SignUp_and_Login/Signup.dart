import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/HomePageAll/HomePage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => SignupState();
}

class SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController F_name = TextEditingController();
  final TextEditingController L_name = TextEditingController();
  final TextEditingController E_mail = TextEditingController();
  final TextEditingController Pass = TextEditingController();
  bool _obscurePassword = true;
  bool isChecked = false;
  void Clear() {
    F_name.clear();
    L_name.clear();
    E_mail.clear();
    Pass.clear();
  }

  @override
  Widget build(BuildContext context) {
    final Screenheight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: Screenheight,
          width: ScreenWidth,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/appbarlogo.png',
                height: Screenheight * 0.16,
              ),
              Text(
                'NUTRISCAN',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                'Health & Wellness',
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
              ),
              SizedBox(height: 15),
              Text(
                'Sign Up Account',
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create your Account',
                  style: GoogleFonts.roboto(fontSize: 15, color: Colors.grey),
                ),
              ),
              SizedBox(height: 15),
              Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: F_name,
                        obscureText: false,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "First name is required";
                          } else if (value.length < 2) {
                            return "Must be at least 2 characters";
                          } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                            return "Only letters allowed";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: TextFormField(
                        controller: L_name,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),

              Column(
                children: [
                  TextFormField(
                    controller: E_mail,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: Pass,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),

                      const Text("I agree to the "),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Terms of Services",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(width: 120),
                      GestureDetector(
                        onTap: () {
                          Clear();
                        },
                        child: const Text(
                          "Clear",
                          style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print('SignUpPressed');
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, thickness: 2)),
                  Text('Or Use'),
                  Expanded(child: Divider(color: Colors.grey, thickness: 2)),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      print('Googlepressed');
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/google.png', height: 15),
                        Text('  Google'),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      print('faceBookpressed');
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/facebook.png', height: 15),
                        Text('  facebook'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
