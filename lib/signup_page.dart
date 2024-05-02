import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232325),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 433,
            height: 752,
            decoration: BoxDecoration(
              color: const Color(0xFF3B3B3E),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(216.5),
                bottomRight: Radius.circular(216.5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.25),
                  offset: const Offset(0, -4),
                  blurRadius: 4,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.8),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 69),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 64,
                    fontFamily: 'OdibeeSans',
                    color: Color(0xFFA6A6A6),
                  ),
                ),
                const SizedBox(height: 47),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'NotoSerifTamilSlanted',
                          color: Color(0xFFB6ACAC),
                        ),
                      ),
                      const SizedBox(height: 1),
                      Container(
                        width: 353,
                        height: 63,
                        decoration: BoxDecoration(
                          color: const Color(0xFF232325),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              offset: const Offset(0, -4),
                              blurRadius: 4,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.39),
                              offset: const Offset(0, 4),
                              blurRadius: 2.2,
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Username',
                              hintStyle: TextStyle(color: Color(0xFFB6ACAC)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'NotoSerifTamilSlanted',
                          color: Color(0xFFB6ACAC),
                        ),
                      ),
                      const SizedBox(height: 1),
                      Container(
                        width: 353,
                        height: 63,
                        decoration: BoxDecoration(
                          color: const Color(0xFF232325),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              offset: const Offset(0, -4),
                              blurRadius: 4,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.39),
                              offset: const Offset(0, 4),
                              blurRadius: 2.2,
                              spreadRadius: 4,
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
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(color: Color(0xFFB6ACAC)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Confirm Password',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'NotoSerifTamilSlanted',
                          color: Color(0xFFB6ACAC),
                        ),
                      ),
                      const SizedBox(height: 1),
                      Container(
                        width: 353,
                        height: 63,
                        decoration: BoxDecoration(
                          color: const Color(0xFF232323),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              offset: const Offset(0, -4),
                              blurRadius: 4,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.39),
                              offset: const Offset(0, 4),
                              blurRadius: 2.2,
                              spreadRadius: 4,
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
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: Color(0xFFB6ACAC)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF232325),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          offset: const Offset(0, -4),
                          blurRadius: 4,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.39),
                          offset: const Offset(0, 4),
                          blurRadius: 2.2,
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
