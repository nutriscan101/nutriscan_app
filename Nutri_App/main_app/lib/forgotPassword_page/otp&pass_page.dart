import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class otppass extends StatefulWidget {
  State<otppass> createState() => recovery();
}

class recovery extends State<otppass> {
  @override
  Widget build(BuildContext context) {
    final recover_key = GlobalKey<FormState>();
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    final TextEditingController checkpass_con = new TextEditingController();

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
                  'assets/images/passrecovery.png',
                  height: screenheight * 0.15,
                ),
                SizedBox(height: screenheight * 0.05),
                Text(
                  'Password Recovery',
                  style: GoogleFonts.roboto(
                    fontSize: screenheight * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenheight * 0.04),
                Text(
                  'Enter Recieved OTP And New PassWord',
                  style: GoogleFonts.poppins(
                    fontSize: screenheight * 0.02,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: screenheight * 0.05),
                Form(
                  key: recover_key,
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: false,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'OTP is required';
                          } else if (value.length != 6) {
                            return 'OTP must be 6 digits';
                          } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return 'OTP must contain only numbers';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter OTP',
                          border: OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: screenheight * 0.05),

                      TextFormField(
                        controller: checkpass_con,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter New Password',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Password is required";
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: screenheight * 0.03),

                      TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Re-Enter PassWord',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please re-enter your password';
                          } else if (value != checkpass_con.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenheight * 0.05),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 100,
                    ),
                  ),
                  onPressed: () {
                    if (recover_key.currentState!.validate()) {}
                    ;
                  },
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      fontSize: screenheight * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
