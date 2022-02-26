import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';

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
            Icons.arrow_back_ios_new,
            color: colorBlack,
          ),
        ),
        title: Text(
          'เพิ่มผู้ใช้',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(defaultPadding),
        margin: const EdgeInsets.all(defaultPadding),
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: RichText(
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
                                  color: colorRed,
                                ),
                              ),
                            ],
                          ),
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: RichText(
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
                                  color: colorRed,
                                ),
                              ),
                            ],
                          ),
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: Text(
                          'ชื่อเล่น',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colorBlack),
                        ),
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: RichText(
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
                                  color: colorRed,
                                ),
                              ),
                            ],
                          ),
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'เบอร์โทรศัพท์',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colorBlack),
                              ),
                              TextSpan(
                                text: '*',
                                style: GoogleFonts.kanit(
                                  color: colorRed,
                                ),
                              ),
                            ],
                          ),
                        ),
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
                  child: SizedBox(height: defaultPadding),
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'รหัสผ่าน',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colorBlack),
                              ),
                              TextSpan(
                                text: '*',
                                style: GoogleFonts.kanit(
                                  color: colorRed,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'รหัสผ่าน',
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'ป้อนรหัสผ่านอีกครั้ง',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colorBlack),
                              ),
                              TextSpan(
                                text: '*',
                                style: GoogleFonts.kanit(
                                  color: colorRed,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'รหัสผ่าน',
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: defaultPadding * 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: colorbgbtn,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'ยกเลิก',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
                ),
              ),
            ),
            const SizedBox(width: defaultPadding),
            SizedBox(
              width: 160,
              height: 48,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: colortext1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                onPressed: () {
                  showPopupSave();
                },
                icon: const Icon(Icons.save),
                label: Text(
                  'บันทึก',
                  style: GoogleFonts.kanit(fontSize: bodytext),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showPopupSave() {
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
                child: Text(
                  'บันทึกข้อมูลสำเร็จ',
                  style: GoogleFonts.kanit(fontSize: bodytext),
                )),
          );
        });
  }
}
