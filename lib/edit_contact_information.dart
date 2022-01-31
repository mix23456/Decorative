import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class ContactInformation extends StatefulWidget {
  const ContactInformation({Key? key}) : super(key: key);

  @override
  _ContactInformationState createState() => _ContactInformationState();
}

class _ContactInformationState extends State<ContactInformation> {
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
          'ข้อมูลการติดต่อ',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFEDEDED),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(defaultPadding),
            margin: const EdgeInsets.only(
                top: defaultPadding * 2,
                bottom: defaultPadding,
                left: defaultPadding * 5,
                right: defaultPadding * 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          color: colorbgbtn,
                          child: IconButton(
                            onPressed: () {
                              showPopupChangeImage();
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: colortext1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 250,
                        color: colorContainer,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Text(
                  'บริษัท DK decorative',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'เลขกำกับภาษี',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'ที่อยู่',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'เบอร์โทรติดต่อ',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Tab(
                      icon: Image.asset('assets/logos/facebook_logo.png'),
                      height: 24,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Tab(
                      icon: Image.asset('assets/logos/instagram_logo.png'),
                      height: 24,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Tab(
                      icon: Image.asset('assets/logos/line_logo.png'),
                      height: 24,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Tab(
                      icon: Image.asset('assets/logos/twitter_logo.png'),
                      height: 24,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 160,
                height: 48,
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 12, vertical: 58),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: colortext2.withOpacity(0.25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ยกเลิก',
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext1),
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding),
              SizedBox(
                width: 160,
                height: 48,
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 12, vertical: 58),
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
        ],
      ),
    );
  }

  void showPopupChangeImage() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'เปลี่ยนรูปภาพ',
                      style: GoogleFonts.kanit(fontSize: bodytext),
                    ),
                    const SizedBox(width: defaultPadding),
                    Container(
                      width: 32,
                      height: 32,
                      color: colorbgbtn,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            showPopupconfirm();
                          },
                          icon: const Icon(Icons.image, color: colortext1),
                          iconSize: 18),
                    )
                  ],
                )),
          );
        });
  }

  void showPopupconfirm() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 28, horizontal: defaultPadding),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.12,
                child: Column(
                  children: [
                    Text('ยืนยันจะใช้รูปภาพนี้',
                        style: GoogleFonts.kanit(fontSize: bodytext)),
                    const SizedBox(height: defaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              primary: const Color(0xFFD4D4D4),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'ยกเลิก',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colortext1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              primary: colortext1,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: Text(
                              'ยืนยัน',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colorWhite),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
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
