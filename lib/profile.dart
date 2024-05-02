import 'package:flutter/material.dart';
// Import OptionsPage to navigate to it

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232325),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Navigate to OptionsPage
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: 314,
                height: 667,
                decoration: BoxDecoration(
                  color: const Color(0xFF232325),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(97),
                    bottomRight: Radius.circular(97),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.25),
                      offset: const Offset(-6, -6),
                      blurRadius: 4,
                    ),
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.25),
                      offset: const Offset(10, 9),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    Image.asset(
                      'assets/images/face.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Username',
                      style: TextStyle(
                        fontFamily: 'NotoSansTamil',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Container(
                      width: 271,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFF232325),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFFFFF).withOpacity(0.2),
                            offset: const Offset(0, -5),
                            blurRadius: 7,
                            spreadRadius: -1,
                          ),
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.25),
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 23),
                    const Text(
                      'Levels Completed',
                      style: TextStyle(
                        fontFamily: 'NotoSansTamil',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Container(
                      width: 271,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFF232325),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFFFFF).withOpacity(0.2),
                            offset: const Offset(0, -5),
                            blurRadius: 7,
                            spreadRadius: -1,
                          ),
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.25),
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 23),
                    const Text(
                      'Score',
                      style: TextStyle(
                        fontFamily: 'NotoSansTamil',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 1),
                    Container(
                      width: 271,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFF232325),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFFFFF).withOpacity(0.2),
                            offset: const Offset(0, -5),
                            blurRadius: 7,
                            spreadRadius: -1,
                          ),
                          BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.25),
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
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
