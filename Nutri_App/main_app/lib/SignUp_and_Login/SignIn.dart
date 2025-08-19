import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/HomePageAll/HomePage.dart';
import 'package:main_app/SignUp_and_Login/Signup.dart';
import 'package:main_app/forgotPassword_page/forgotpass.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});
  @override
  State<Signin> createState() => Signinstate();
}

class Signinstate extends State<Signin> {
  final FormKey_login = GlobalKey<FormState>();

  bool _obscurePassword = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Container(
            color: Colors.white,
            width: screenwidth,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/appbarlogo.png',
                  height: screenheight * 0.12,
                ),
                Text(
                  'NUTRISCAN',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: screenwidth * 0.06,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Health & Wellness',
                  style: GoogleFonts.poppins(
                    fontSize: screenwidth * 0.03,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenheight * 0.02),
                Text(
                  'Welcome back',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: screenwidth * 0.05,
                  ),
                ),
                SizedBox(height: screenheight * 0.02),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter your login information',
                    style: GoogleFonts.roboto(fontSize: 15, color: Colors.grey),
                  ),
                ),
                SizedBox(height: screenheight * 0.02),
                Form(
                  key: FormKey_login,
                  child: Column(
                    children: [
                      TextFormField(
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
                          hintText: 'Email Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: screenheight * 0.03),
                      TextFormField(
                        obscureText: _obscurePassword,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Password is required";
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: screenheight * 0.02),
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
                          const Text("Remember me"),

                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => forgotpass(),
                                ),
                              );
                            },
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
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
                    if (FormKey_login.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                    ;
                  },

                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: screenheight * 0.05),

                Row(
                  children: const [
                    Expanded(child: Divider(color: Colors.grey, thickness: 2)),
                    Text('Or Use'),
                    Expanded(child: Divider(color: Colors.grey, thickness: 2)),
                  ],
                ),

                SizedBox(height: screenheight * 0.05),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('Google pressed');
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/images/google.png', height: 15),
                          const Text('  Google'),
                        ],
                      ),
                    ),
                    SizedBox(width: screenwidth * 0.15),
                    ElevatedButton(
                      onPressed: () {
                        print('Facebook pressed');
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/images/facebook.png', height: 15),
                          const Text('  Facebook'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenheight * 0.03),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Column(
                      children: [
                        Text("Dont have an account?"),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
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
