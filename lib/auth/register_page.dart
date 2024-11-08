import 'package:chat_app/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
  // void dispose(){
  //   usernammeController.dispose();
  //   emailController.dispose();
  //   passwordController.dispose();
  // }
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isCheked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _registerKey,
              child: Padding(
                padding: EdgeInsets.all(16.1),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        width: 100,
                        height: 100,
                        child: Image(
                          image: AssetImage("assets/icons/register.png"),
                          color: Color(0xfff86320),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(16.1),
                        child: Text(
                          "Register",
                          style: GoogleFonts.spaceGrotesk(
                            color: const Color(0xfff86320),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      TextFormField(
                        keyboardType: TextInputType.name,
                        style: GoogleFonts.dmSans(color: Colors.grey),
                        controller: _usernameController,
                        validator: (userName) {
                          if (userName == null || userName.isEmpty) {
                            return "Please enter user name";
                          }
                          if (userName.length < 5) {
                            return "Enter a valid Username";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "User Name",
                          labelStyle: GoogleFonts.dmSans(color: Colors.black),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color(0xfff86320),
                          ),
                          // text field
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfff86320)),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          // focused text field
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 2,
                            ),
                          ),
                          // error text field
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xffdf0808),
                              width: 2,
                            ),
                          ),
                          // error focused text filed
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20), //gap between contents
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: GoogleFonts.dmSans(color: Colors.grey),
                        controller: _emailController,
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'Please enter an email';
                          }
                          final emailRegex =
                              RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                          if (!emailRegex.hasMatch(email)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: GoogleFonts.dmSans(color: Colors.black),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xfff86320),
                          ),
                          // text field
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfff86320)),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          // focused text field
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 2,
                            ),
                          ),
                          // error text field
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xffdf0808),
                              width: 2,
                            ),
                          ),
                          // error focused text filed
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: GoogleFonts.dmSans(color: Colors.grey),
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter a password";
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: GoogleFonts.dmSans(color: Colors.black),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color(0xfff86320),
                          ),
                          // text field
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfff86320)),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          // focused text field
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 2,
                            ),
                          ),

                          // error text field
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xffdf0808),
                              width: 2,
                            ),
                          ),
                          // error focused text filed
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      // check box
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              activeColor: Color(0xff27af3a),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              value: isCheked,
                              onChanged: (newValue) {
                                setState(() {
                                  isCheked = newValue!;
                                });
                              },
                            ),
                            Text(
                              "I agree to the Terms and Conditions",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15, color: Color(0xff1D44D6)),
                            ),
                          ]),

                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xfff86320)),
                          onPressed: () {
                            if (_registerKey.currentState!.validate()) {
                              _emailController.clear();
                              _passwordController.clear();

                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const ChatListPage(),
                              //   ),
                              // );

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Login Successful'),
                                  backgroundColor: Color(0xff4caf50),
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            }
                          },
                          child: Text(
                            "Register",
                            style: GoogleFonts.dmSans(
                              color: const Color(0xffffffff),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // SizedBox(height: 10), // gap betwwen contents

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Already Member?',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xfff86320),
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.all(0),
                              ),
                              onPressed: () {
                                Navigator.pop(context, (route) => LoginPage());
                              },
                              child: Text(
                                'Login',
                                style: GoogleFonts.dmSans(
                                  color: const Color(0xfff86320),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ]),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
