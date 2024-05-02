import 'package:flutter/material.dart';
import 'forgot_password.dart'; // Import LevelsPage to navigate to it on "Login"
import 'signup_page.dart';
import 'levels_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0), // Hide the app bar
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      backgroundColor: const Color(0xFF949497),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Background Rectangular Shape
              Container(
                width: MediaQuery.of(context).size.width,
                height: 736,
                decoration: const BoxDecoration(
                  color: Color(0xFF232325),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(215),
                    bottomRight: Radius.circular(215),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 69),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 64,
                        fontFamily: 'OdibeeSans',
                        color: Color(0xFFA6A6A6),
                      ),
                    ),
                    const SizedBox(height: 69),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Username',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'NotoSerifTamilSlanted',
                                  color: Color(0xFF949497),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                          const SizedBox(height: 1),
                          Container(
                            width: 271,
                            height: 69,
                            decoration: BoxDecoration(
                              color: const Color(0xFF232325),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(
                                      2, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Username',
                                  hintStyle:
                                      TextStyle(color: Color(0xFF949497)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 39),
                          const Row(
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'NotoSerifTamilSlanted',
                                  color: Color(0xFF949497),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                          const SizedBox(height: 1),
                          Container(
                            width: 271,
                            height: 69,
                            decoration: BoxDecoration(
                              color: const Color(0xFF232325),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(
                                      2, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                obscureText: true,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle:
                                      TextStyle(color: Color(0xFF949497)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                              height: 49), // Space for "Forgot password"
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPasswordPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'forgot password?',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'NotoSerifTamilSlanted',
                                    color: Color(0xFFA6A6A6),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      36), // Space between lines and "OR" text

                              const SizedBox(width: 36),
                              ElevatedButton(
                                onPressed: () {
                                  // Navigate to SignUpPage
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LevelsPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFFA6A6A6)
                                      .withOpacity(0.79), // Text color
                                  elevation: 5, // Elevation for inner shadow
                                  shadowColor: Colors.black, // Shadow color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  minimumSize: const Size(
                                      102, 40), // Button width and height
                                ),
                                child: const Text(
                                  'login',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'OdibeeSans',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                              height: 33), // Space for line and "OR" text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 89,
                                height: 2,
                                color: const Color.fromARGB(255, 6, 6, 7),
                              ),
                              const SizedBox(
                                  width:
                                      36), // Space between lines and "OR" text
                              const Text(
                                'OR',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'ShareTechMono',
                                  color: Color(0xFF949497),
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      36), // Space between "OR" text and line
                              Container(
                                width: 90,
                                height: 2,
                                color: const Color(0xFF78787B),
                              ),
                            ],
                          ),
                          const SizedBox(
                              height: 22), // Space for "Don't have an account?"
                          const Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'NotoSerifTamilSlanted',
                              color: Color(0xFF949497),
                            ),
                          ),
                          const SizedBox(
                              height: 22), // Space for "Sign Up" button
                          ElevatedButton(
                            onPressed: () {
                              // Navigate to SignUpPage
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF232325)
                                  .withOpacity(0.79), // Text color
                              elevation: 5, // Elevation for inner shadow
                              shadowColor: Colors.black, // Shadow color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: const Size(
                                  200, 40), // Button width and height
                            ),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'OdibeeSans',
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
