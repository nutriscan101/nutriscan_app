import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});
  @override
  State<Signin> createState() => SigninState();
}

class SigninState extends State<Signin> {
  final FormKey_login = GlobalKey<FormState>();

  bool _obscurePassword = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final Screenwidth = MediaQuery.of(context).size.width;

    @override
    void initState() {
      super.initState();
      isChecked = false;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: screenheight,
          width: Screenwidth,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/appbarlogo.png',
                height: screenheight * 0.16,
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
              const SizedBox(height: 15),
              Text(
                'Welcome back',
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your login information',
                  style: GoogleFonts.roboto(fontSize: 15, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 15),
              Form(
                key: FormKey_login,
                child: Column(
                  children: [
                    TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
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
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
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
                          onTap: () {},
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
                  if (FormKey_login.currentState!.validate()) {}
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

              const SizedBox(height: 20),

              Row(
                children: const [
                  Expanded(child: Divider(color: Colors.grey, thickness: 2)),
                  Text('Or Use'),
                  Expanded(child: Divider(color: Colors.grey, thickness: 2)),
                ],
              ),

              const SizedBox(height: 20),

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
                  const SizedBox(width: 50),
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
            ],
          ),
        ),
      ),
    );
  }
}
