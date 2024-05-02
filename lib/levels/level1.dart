import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'custom_button.dart';
import 'custom_box.dart';

class Level1 extends StatefulWidget {
  @override
  _Level1State createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  int _currentFrame = 1;
  bool _showArrows = true;

  final AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _player.setAsset('assets/audio/phone_ringing.mp3');
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  void _nextFrame() {
    setState(() {
      _currentFrame++;
      if (_currentFrame > 2) {
        _showArrows = true;
      }
    });
  }

  void _prevFrame() {
    setState(() {
      _currentFrame--;
      if (_currentFrame <= 1) {
        _showArrows = true;
      }
    });
  }

  void _handleTap() {
    switch (_currentFrame) {
      case 1:
        // Show frame 1 box and text
        break;
      case 2:
        // Show frame 2 box and text
        _player.play();
        break;
      case 3:
        // Show frame 3 box and text
        break;
      case 4:
        // Show frame 4 box and text
        break;
      case 5:
        // Show frame 5 box and text
        break;
      case 6:
        // Show frame 6 box and text
        break;
      case 7:
        // Show frame 7 box and text
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232325),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.landscape
              ? _buildLandscapeLayout()
              : Center(
                  child: Text(
                    'Please rotate your device to landscape mode',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                );
        },
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF232325),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              _handleTap();
            },
            child: _buildCurrentFrame(),
          ),
          if (_showArrows) ...[
            Positioned(
              left: 20,
              top: 20,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: _prevFrame,
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: _nextFrame,
                color: Colors.white,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCurrentFrame() {
    switch (_currentFrame) {
      case 1:
        return _buildFrame1();
      case 2:
        return _buildFrame2();
      case 3:
        return _buildFrame3();
      case 4:
        return _buildFrame4();
      case 5:
        return _buildFrame5();
      case 6:
        return _buildFrame6();
      case 7:
        return _buildFrame7();
      case 8:
        return _buildFrame8();
      case 9:
        return _buildFrame9();
      case 10:
        return _buildFrame10();
      case 11:
        return _buildFrame11();
      case 12:
        return _buildFrame12();
      case 13:
        return _buildFrame13();
      case 14:
        return _buildFrame14();
      case 15:
        return _buildFrame15();
      case 16:
        return _buildFrame16();
      case 17:
        return _buildFrame17();
      case 18:
        return _buildFrame18();
      case 19:
        return _buildFrame19();
      case 20:
        return _buildFrame20();
      case 21:
        return _buildFrame21();
      case 22:
        return _buildFrame22();
      case 23:
        return _buildFrame23();
      case 24:
        return _buildFrame24();
      case 25:
        return _buildFrame25();
      case 26:
        return _buildFrame26();
      case 27:
        return _buildFrame27();
      default:
        return Container();
    }
  }

  Widget _buildFrame1() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/sophia.jpg',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: CustomBox(
            text:
                'Sophia is seen sitting on the couch, scrolling social media. Suddenly she receives a call from an unknown number',
          ),
        ),
      ],
    );
  }

  Widget _buildFrame2() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/phone.jpg',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: CustomBox(
            text: 'UNKNOWN: 989XXXXXXX',
          ),
        ),
      ],
    );
  }

  Widget _buildFrame3() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF27292f),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      width: 1200,
      height: 740,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'What do you wish to do?',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          CustomButton(
            text: 'Answer the call',
            onPressed: _nextFrame,
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'Ignore',
            onPressed: _prevFrame,
          ),
        ],
      ),
    );
  }

  Widget _buildFrame4() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/scammer.jpg',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: CustomBox(
            text: 'Hello, is this Sophia?',
          ),
        ),
      ],
    );
  }

  Widget _buildFrame5() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/sophiabv.jpg',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: CustomBox(
            text: 'Yes, who\'s this?',
          ),
        ),
      ],
    );
  }

  Widget _buildFrame6() {
    return Stack(
      children: [
        Image.asset(
          'assets/images/frame19.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: CustomBox(
            text:
                'This is from your bank\'s security department. We\'ve noticed some suspicious activity on your account. For security purposes, could you please verify your identity?',
          ),
        ),
      ],
    );
  }
  
Widget _buildFrame7() {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFF27292f),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          offset: Offset(0, 4),
          blurRadius: 4,
        ),
      ],
      borderRadius: BorderRadius.circular(20),
    ),
    width: 1200,
    height: 740,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Choose your response',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 61),
        CustomButton(
          text: 'Ask what\'s the matter',
          onPressed: () {
            setState(() {
              _currentFrame = 8; // Go to frame 8
            });
          },
        ),
        SizedBox(height: 61),
        CustomButton(
          text: 'Hang up',
          onPressed: () {
            setState(() {
              _currentFrame = 2; // Go back to frame 2
            });
          },
        ),
      ],
    ),
  );
}
Widget _buildFrame8() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 9; // Go to frame 9
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame18.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Text(
              'Um, sure. What do you need?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _buildFrame9() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 10; // Go to frame 10
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame19.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Text(
              'We need to confirm a transaction. Could you provide us with the OTP (One Time Password) you just received on your phone?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


Widget _buildFrame10() {
  _player.setAsset('assets/audio/notification.mp3');
  _player.play();

  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 11; // Go to frame 11
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/phone.jpg',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Text(
              'Your OTP is: 123 456',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


Widget _buildFrame11() {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFF27292f),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          offset: Offset(0, 4),
          blurRadius: 4,
        ),
      ],
      borderRadius: BorderRadius.circular(20),
    ),
    width: 1200,
    height: 740,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'What do you wish to do?',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 61),
        CustomButton(
          text: 'Share the OTP',
          onPressed: () {
            setState(() {
              _currentFrame = 19; // Go to frame 19
            });
          },
        ),
        SizedBox(height: 61),
        CustomButton(
          text: 'Refuse',
          onPressed: () {
            setState(() {
              _currentFrame = 12; // Go to frame 12
            });
          },
        ),
      ],
    ),
  );
}


Widget _buildFrame12() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 13; // Go to frame 13
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame18.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Text(
              'Oh, I see. Well, I appreciate you looking out for me, but I\'ll need to double-check with my bank first.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


Widget _buildFrame13() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 14; // Go to frame 14
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame19.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Text(
              'There\'s no need for that, ma\'am. This is urgent. We must act quickly to prevent any unauthorized access to your account.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


Widget _buildFrame14() {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFF27292f),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          offset: Offset(0, 4),
          blurRadius: 4,
        ),
      ],
      borderRadius: BorderRadius.circular(20),
    ),
    width: 1200,
    height: 740,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Choose your response',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 61),
        CustomButton(
          text: 'Confirm with bank',
          onPressed: () {
            setState(() {
              _currentFrame = 15; // Go to frame 15
            });
          },
        ),
        SizedBox(height: 61),
        CustomButton(
          text: 'Call a friend',
          onPressed: () {
            setState(() {
              _currentFrame = 16; // Go to frame 16
            });
          },
        ),
      ],
    ),
  );
}
Widget _buildFrame15() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 27; // Go to frame 27
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame19.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Text(
              "I understand, but I really should confirm this with my bank first. Can I call you back on a verified number?",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _buildFrame16() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 17; // Go to frame 17
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame19.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Text(
              "Someone is calling me. I’m hanging up",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _buildFrame17() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 18; // Go to frame 18
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame19.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Text(
              "I'm afraid we don't have time for that. Please cooperate, ma'am. Your account's security is at risk.",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _buildFrame18() {
  return Stack(
    children: [
      Image.asset(
        'assets/images/phone.jpg',
        fit: BoxFit.cover,
      ),
      Positioned(
        left: 20,
        right: 20,
        bottom: 20,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF27292f),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          width: 1200,
          height: 740,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose your response',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 61),
              CustomButton(
                text: 'Refuse',
                onPressed: () {
                  setState(() {
                    _currentFrame = 27; // Go to frame 27
                  });
                },
              ),
              SizedBox(height: 61),
              CustomButton(
                text: 'Share the OTP',
                onPressed: () {
                  setState(() {
                    _currentFrame = 19; // Go to frame 19
                  });
                },
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
Widget _buildFrame19() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 20; // Go to frame 20
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame19.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Text(
              "Yeah, its 123 456",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _buildFrame20() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 21; // Go to frame 21
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/frame19.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Text(
              "Thank you, Sophia. Your account is now secure. We appreciate your cooperation.",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _buildFrame21() {
  return Stack(
    children: [
      Image.asset(
        'assets/images/phone.jpg',
        fit: BoxFit.cover,
      ),
      Positioned(
        left: 20,
        right: 20,
        bottom: 20,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF27292f),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          width: 1200,
          height: 740,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'A/c Debit: Rs. 5,00,000.0\nA/c No. XX510 on 2024-04-01 12:54:30\nUPI Ref No. 409293022041 - South Indian Bank',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Whatever action you want here
                },
                child: Text(''),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.transparent,
                  elevation: 0,
                  shadowColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
Widget _buildFrame22() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 23; // Go to frame 23
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/phone.jpg',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "YOU HAVE BEEN SCAMMED",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentFrame = 23; // Go to frame 23
                    });
                  },
                  child: Text('Click here for solution'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Color(0xFF000000),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _buildFrame23() {
  return Stack(
    children: [
      Container(
        color: Color(0xFF232325),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/bank.jpeg'),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF232325),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9e8c8c).withOpacity(0.25),
                    offset: Offset(-1, -4),
                    blurRadius: 4,
                  ),
                  BoxShadow(
                    color: Color(0xFF050505).withOpacity(0.25),
                    offset: Offset(13, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Text(
                "CONTACT YOUR BANK IMMEDIATELY",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 20,
        right: 20,
        bottom: 20,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _currentFrame = 24; // Go to frame 24
            });
          },
          child: Text('Next'),
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onPrimary: Colors.transparent,
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
        ),
      ),
    ],
  );
}
Widget _buildFrame24() {
  return Stack(
    children: [
      Container(
        color: Color(0xFF232325),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/images.jpeg'),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF232325),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9e8c8c).withOpacity(0.25),
                    offset: Offset(-1, -4),
                    blurRadius: 4,
                  ),
                  BoxShadow(
                    color: Color(0xFF050505).withOpacity(0.25),
                    offset: Offset(13, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Text(
                "CHANGE PASSWORDS AND PINS",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 20,
        right: 20,
        bottom: 20,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _currentFrame = 25; // Go to frame 25
            });
          },
          child: Text('Next'),
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onPrimary: Colors.transparent,
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
        ),
      ),
    ],
  );
}
Widget _buildFrame25() {
  return Stack(
    children: [
      Container(
        color: Color(0xFF232325),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/search.jpeg'),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF232325),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9e8c8c).withOpacity(0.25),
                    offset: Offset(-1, -4),
                    blurRadius: 4,
                  ),
                  BoxShadow(
                    color: Color(0xFF050505).withOpacity(0.25),
                    offset: Offset(13, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Text(
                "MONITOR YOUR ACCOUNTS",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 20,
        right: 20,
        bottom: 20,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _currentFrame = 26; // Go to frame 26
            });
          },
          child: Text('Next'),
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onPrimary: Colors.transparent,
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
        ),
      ),
    ],
  );
}
Widget _buildFrame26() {
  return Stack(
    children: [
      Container(
        color: Color(0xFF232325),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/debunk.jpeg'),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF232325),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9e8c8c).withOpacity(0.25),
                    offset: Offset(-1, -4),
                    blurRadius: 4,
                  ),
                  BoxShadow(
                    color: Color(0xFF050505).withOpacity(0.25),
                    offset: Offset(13, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Text(
                "REPORT TO AUTHORITIES",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 20,
        right: 20,
        bottom: 20,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _currentFrame = 27; // Go to frame 27
            });
          },
          child: Text('Next'),
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onPrimary: Colors.transparent,
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
        ),
      ),
    ],
  );
}
Widget _buildFrame27() {
  return GestureDetector(
    onTap: () {
      setState(() {
        _currentFrame = 23; // Go to frame 23
      });
    },
    child: Stack(
      children: [
        Image.asset(
          'assets/images/phone.jpg',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCECEC9), Color(0xFF686865)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.5),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Phew! You Dodged a Bullet",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  "Great job! You managed to escape from the clutches of a scammer. Your quick thinking saved you from potential financial loss.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentFrame = 23; // Go to frame 23
                    });
                  },
                  child: Text('Let\'s look at more solutions'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Color(0xFF000000),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

}


