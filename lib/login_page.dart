import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants.dart';
import 'package:project_curtain/foget_password.dart';
import 'package:project_curtain/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  var iconClick = true;

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
        ),
        const SizedBox(height: defaultPadding / 2),
        Container(
          alignment: Alignment.centerLeft,
          height: defaultPadding + 40,
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
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
          style: GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
        ),
        const SizedBox(height: defaultPadding / 2),
        Container(
          alignment: Alignment.centerLeft,
          height: defaultPadding + 40,
          child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Password',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ForgetScreen(),
          ),
        ),
        child: Text(
          'Forgot Password?',
          style: GoogleFonts.kanit(fontSize: bodytext, color: colorBlue),
        ),
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
            style: GoogleFonts.kanit(fontSize: bodytext, color: colortext2),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      width: 160,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const TabsScreen(),
            ),
          );
        },
        child: Text(
          "SIGN IN",
          style: GoogleFonts.kanit(
            color: colorWhite,
            fontSize: bodytext,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: colortext1,
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
