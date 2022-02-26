import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';

class Bank extends StatefulWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  _BankState createState() => _BankState();
}

class _BankState extends State<Bank> {
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
          'ธนาคาร',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: colorWhite,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: colorbgbtn),
                    color: colorWhite),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.asset('assets/logos/kbank.png'),
                        ),
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        // hintText: 'ชื่อ-นามสกุล',
                                        // hintStyle: GoogleFonts.kanit(),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: colortext1,
                                    child: IconButton(
                                      onPressed: () {
                                        showPopupRemoveBank();
                                      },
                                      icon: const Icon(
                                        Icons.delete_outline,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: defaultPadding),
                              SizedBox(
                                width: 400,
                                child: TextField(
                                  decoration: InputDecoration(
                                    // hintText: 'เลขที่บัญชี',
                                    // hintStyle: GoogleFonts.kanit(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: defaultPadding),
                              SizedBox(
                                width: 400,
                                child: TextField(
                                  decoration: InputDecoration(
                                    // hintText: 'ชื่อธนาคาร',
                                    // hintStyle: GoogleFonts.kanit(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Image.asset('assets/logos/QR_code.png')
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: colorbgbtn),
                    color: colorWhite),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.asset('assets/logos/krungthai.png'),
                        ),
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        // hintText: 'ชื่อ-นามสกุล',
                                        // hintStyle: GoogleFonts.kanit(),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: colortext1,
                                    child: IconButton(
                                      onPressed: () {
                                        showPopupRemoveBank();
                                      },
                                      icon: const Icon(
                                        Icons.delete_outline,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: defaultPadding),
                              SizedBox(
                                width: 400,
                                child: TextField(
                                  decoration: InputDecoration(
                                    // hintText: 'เลขที่บัญชี',
                                    // hintStyle: GoogleFonts.kanit(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: defaultPadding),
                              SizedBox(
                                width: 400,
                                child: TextField(
                                  decoration: InputDecoration(
                                    // hintText: 'ชื่อธนาคาร',
                                    // hintStyle: GoogleFonts.kanit(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Image.asset('assets/logos/QR_code.png')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showPopupRemoveBank() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 28, horizontal: defaultPadding),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.12,
              child: Column(
                children: [
                  Text('ยืนยันจะลบข้อมูลธนาคาร',
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
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          'ลบข้อมูลธนาคารสำเร็จ',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext),
                                        )),
                                  );
                                });
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
          );
        });
  }
}
