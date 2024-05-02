import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B3B3E),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 736,
          decoration: BoxDecoration(
            color: const Color(0xFF232325),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(215),
              bottomRight: Radius.circular(215),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.25),
                spreadRadius: -5,
                blurRadius: 5,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create new password',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'OdibeeSans',
                    color: Color(0xFFA6A6A6),
                  ),
                ),
                const SizedBox(height: 1),
                const Text(
                  'Your new password must be different from previously used password',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PontanoSans',
                    color: Color(0xFFA6A6A6),
                  ),
                ),
                const SizedBox(height: 49),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NotoSerifTamilSlanted',
                    color: Color(0xFF949497),
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
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: -5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Color(0xFF949497)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 23),
                const Text(
                  'Confirm password',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NotoSerifTamilSlanted',
                    color: Color(0xFF949497),
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
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: -5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Color(0xFF949497)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 49),
                ElevatedButton(
                  onPressed: () {
                    // Reset password logic
                    Navigator.pop(context); // Go back to previous screen
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color(0xFF232325),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: const Size(262, 40),
                  ),
                  child: const Text(
                    'RESET PASSWORD',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'OdibeeSans',
                      color: Color(0xFF232325),
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
