import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screen/constants/constants.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: colorBlack,
          ),
        ),
        title: Text(
          'เพิ่มผู้ใช้',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitel),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(defaultPadding),
        margin: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ชื่อ',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colorBlack),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.kanit(
                                color: const Color(0xFFFF0000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'ชื่อ',
                          hintStyle: GoogleFonts.kanit(
                              color: Colors.grey, fontSize: bodytext),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'นามสกุล',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colorBlack),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.kanit(
                                color: const Color(0xFFFF0000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'นามสกุล',
                          hintStyle: GoogleFonts.kanit(
                              color: Colors.grey, fontSize: bodytext),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ชื่อเล่น',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colorBlack),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'ชื่อเล่น',
                          hintStyle: GoogleFonts.kanit(
                              color: Colors.grey, fontSize: bodytext),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'อีเมล',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colorBlack),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.kanit(
                                color: const Color(0xFFFF0000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'อีเมล',
                          hintStyle: GoogleFonts.kanit(
                              color: Colors.grey, fontSize: bodytext),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'เบอร์โทรศัพท์',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colorBlack),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'เบอร์โทรศัพท์',
                          hintStyle: GoogleFonts.kanit(
                              color: Colors.grey, fontSize: bodytext),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: defaultPadding / 2),
                const Expanded(
                  flex: 1,
                  child: SizedBox(height: 10),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                height: MediaQuery.of(context).size.height * 0.04,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF707070),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => Map(),
                    //     ));
                  },
                  icon: const Icon(Icons.save),
                  label: Text(
                    'บันทึก',
                    style: GoogleFonts.kanit(fontSize: bodytext),
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
