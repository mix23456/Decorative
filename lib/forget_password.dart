import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  _ForgetScreenState createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Forget Password?',
          style: GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
        ),
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Your Email.',
            style: GoogleFonts.kanit(fontSize: bodytext, color: colortext2),
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Container(
          alignment: Alignment.centerLeft,
          height: defaultPadding + 40,
          width: 360,
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.kanit(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: GoogleFonts.kanit(color: colortext2),
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

  Widget _buildButtonCancleAndSendPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          width: 160,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "ยกเลิก",
              style: GoogleFonts.kanit(
                color: colortext1,
                fontSize: bodytext,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: colorBgBtn2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                minimumSize: const Size(160, 48)),
          ),
        ),
        const SizedBox(width: defaultPadding / 2),
        Container(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          width: 160,
          child: ElevatedButton(
            onPressed: () {
              showPopupForgetPassword();
            },
            child: Text(
              "ส่งรหัสผ่าน",
              style: GoogleFonts.kanit(
                color: colorWhite,
                fontSize: bodytext,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: colortext1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                minimumSize: const Size(160, 48)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
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
                  SizedBox(
                    height: 250,
                    child: Image.asset('assets/logos/logo.png'),
                  ),
                  const SizedBox(height: defaultPadding + 10),
                  _buildEmailTF(),
                  _buildButtonCancleAndSendPassword(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showPopupForgetPassword() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Flexible(
                  child: Text(
                    'เราส่ง รหัสชั่วคราว และ ลิ้งค์สร้างใหม่ ไปยัง email ของคุณแล้ว',
                    style: GoogleFonts.kanit(fontSize: bodytext),
                    textAlign: TextAlign.center,
                  ),
                )),
          );
        });
  }
}
