import 'package:flutter/material.dart';
import 'package:login/login3/login_3.dart';

class Login2 extends StatelessWidget {
  const Login2({Key? key}) : super(key: key);

  void _navigateToLogin3(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const Login3()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/login2/images/primaryBg.png'),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            const Positioned(
                top: 50,
                left: 59,
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'Poppins-Medium',
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
            Positioned(
                top: 140,
                right: 0,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 654,
                  decoration: const BoxDecoration(
                    color: Color(0x80FFFFFF),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(40)),
                  ),
                )),
            Positioned(
              top: 170,
              left: 20,
              right: 0,
              bottom: 28,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFE9FFF6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enter User ID or Email',
                          hintStyle: TextStyle(color: Color(0xFFB4B4B4)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Password',
                          style: TextStyle(
                              fontFamily: 'Poppins-Medium',
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(color: Color(0xFFB4B4B4)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.black,
                              activeColor: const Color(0xFF024335),
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text(
                              'Remember Me',
                              style: TextStyle(
                                  color: Color(0xFF024335),
                                  fontSize: 16,
                                  fontFamily: 'Poppins-Medium',
                                  fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            const Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Color(0xFF024335),
                                  fontSize: 16,
                                  fontFamily: 'Poppins-Medium',
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 99,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFF024335),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _navigateToLogin3(
                                  context); // Gọi hàm để chuyển đến trang login3.dart
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Poppins-Medium',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 59,
                            height: 48,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF024335)),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Image.asset(
                              'assets/login2/images/icon_google.png',
                              width: 20,
                              height: 21,
                            ),
                          ),
                          const Text(
                            'or',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins-Regular',
                                color: Color(0xFFB4B4B4)),
                          ),
                          Container(
                            width: 59,
                            height: 48,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF024335)),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Image.asset(
                              'assets/login2/images/icon_apple.png',
                              width: 20,
                              height: 21,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
