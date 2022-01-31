import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: GoogleFonts.kanit(),
        ),
        const SizedBox(height: defaultPadding / 2),
        Container(
          alignment: Alignment.centerLeft,
          height: defaultPadding + 40,
          // decoration: BoxDecoration(
          //   color: Colors.blue[400],
          //   boxShadow: const [
          //     BoxShadow(
          //         blurRadius: 10, color: Colors.blue, offset: Offset(1, 3)),
          //   ],
          // ),
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.kanit(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Email',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
              // decoration: InputDecoration(
              //     border: InputBorder.none,
              //     contentPadding: const EdgeInsets.only(top: 14.0),
              //     prefixIcon: const Icon(
              //       Icons.email,
              //       color: Colors.white,
              //     ),
              //     hintText: 'Enter your Email',
              //     hintStyle: GoogleFonts.kanit(color: Colors.black26)),
              ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: GoogleFonts.kanit(),
        ),
        const SizedBox(height: defaultPadding / 2),
        Container(
          alignment: Alignment.centerLeft,
          height: defaultPadding + 40,
          // decoration: BoxDecoration(
          //   color: Colors.blue[400],
          //   boxShadow: const [
          //     BoxShadow(
          //         blurRadius: 10, color: Colors.blue, offset: Offset(1, 3)),
          //   ],
          // ),
          child: TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.kanit(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Password',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
              // decoration: InputDecoration(
              //     border: InputBorder.none,
              //     contentPadding: const EdgeInsets.only(top: 14.0),
              //     prefixIcon: const Icon(
              //       Icons.lock,
              //       color: Colors.white,
              //     ),
              //     hintText: 'Enter your Password',
              //     hintStyle: GoogleFonts.kanit(color: Colors.black26)),
              ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        child: Text(
          'Forgot Password?',
          style: GoogleFonts.kanit(),
        ),
        style: TextButton.styleFrom(primary: Colors.blue),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.black,
              activeColor: Colors.black26,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember Me',
            style: GoogleFonts.kanit(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding + 5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('Login Button Pressed'),
        child: Text(
          "SIGN IN",
          style: GoogleFonts.kanit(
            color: Colors.black,
            // letterSpacing: 1.5,
            fontSize: 18,
            // fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: Colors.grey[350],
        ),
      ),
    );
  }

  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [
            //       Color(0xFF73AEF5),
            //       Color(0xFF61A4F1),
            //       Color(0xFF478DE0),
            //       Color(0xFF398AE5),
            //     ],
            //     stops: [0.1, 0.4, 0.7, 0.9],
            //   ),
            // ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
                vertical: defaultPadding * 6,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    child: Image.asset('assets/logos/logo.png'),
                  ),
                  // Text(
                  //   'Sing In',
                  //   style: GoogleFonts.kanit(fontSize: 26),
                  // ),
                  const SizedBox(height: defaultPadding + 10),
                  _buildEmailTF(),
                  const SizedBox(height: defaultPadding / 2),
                  _buildPasswordTF(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildRememberMeCheckbox(),
                      _buildForgotPasswordBtn(),
                    ],
                  ),
                  _buildLoginBtn(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
