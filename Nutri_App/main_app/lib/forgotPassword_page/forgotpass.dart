import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class forgotpass extends StatefulWidget {
  State<forgotpass> createState() => newpass();
}

class newpass extends State<forgotpass> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    final passkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Container(
            padding: EdgeInsets.all(20),
            width: screenwidth,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/forgotpass.png',
                  height: screenheight * 0.15,
                ),
                SizedBox(height: screenheight * 0.05),
                Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    fontSize: screenwidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenheight * 0.05),
                Text(
                  'Quick Reset Your Password',
                  style: GoogleFonts.poppins(
                    fontSize: screenwidth * 0.04,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: screenheight * 0.05),
                Form(
                  key: passkey,
                  child: TextFormField(
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Email is required";
                      } else if (!RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value.trim())) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email Address',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: screenheight * 0.05),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 100,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (passkey.currentState!.validate()) {}
                    ;
                  },
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
