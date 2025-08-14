import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SignIn.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => SignupState();
}

class SignupState extends State<Signup> {
  final FormKey_SignUp = GlobalKey<FormState>();

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
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SizedBox.expand(
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
                      fontSize: 20,
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
                    'Sign Up Account',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: screenwidth * 0.05,
                    ),
                  ),

                  SizedBox(height: screenheight * 0.02),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Create your Account',
                      style: GoogleFonts.roboto(
                        fontSize: screenwidth * 0.03,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  SizedBox(height: screenheight * 0.02),

                  Form(
                    key: FormKey_SignUp,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: F_name,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return "First name is required";
                                  } else if (value.length < 2) {
                                    return "Must be at least 2 characters";
                                  } else if (!RegExp(
                                    r'^[a-zA-Z ]+$',
                                  ).hasMatch(value)) {
                                    return "Only letters allowed";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: 'First Name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),

                            SizedBox(width: screenwidth * 0.03),

                            Expanded(
                              child: TextFormField(
                                controller: L_name,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return "Last name is required";
                                  } else if (value.length < 2) {
                                    return "Must be at least 2 characters";
                                  } else if (!RegExp(
                                    r'^[a-zA-Z ]+$',
                                  ).hasMatch(value)) {
                                    return "Only letters allowed";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Last Name',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: screenheight * 0.02),

                        TextFormField(
                          controller: E_mail,
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
                          decoration: const InputDecoration(
                            hintText: 'Email Address',
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(height: screenheight * 0.02),

                        TextFormField(
                          controller: Pass,
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
                            border: const OutlineInputBorder(),
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
                            const Spacer(),
                            GestureDetector(
                              onTap: Clear,
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
                  ),

                  SizedBox(height: screenheight * 0.02),

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
                      if (FormKey_SignUp.currentState!.validate() &&
                          isChecked == true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signin()),
                        );
                      }
                      ;
                      if (isChecked == true) {
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please Accept Terms'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    },

                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: screenheight * 0.02),

                  Row(
                    children: const [
                      Expanded(
                        child: Divider(color: Colors.grey, thickness: 2),
                      ),
                      Text('Or Use'),
                      Expanded(
                        child: Divider(color: Colors.grey, thickness: 2),
                      ),
                    ],
                  ),

                  SizedBox(height: screenheight * 0.02),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Google pressed');
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              height: screenwidth * 0.03,
                            ),
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
                            Image.asset(
                              'assets/images/facebook.png',
                              height: screenwidth * 0.03,
                            ),
                            const Text('  Facebook'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
