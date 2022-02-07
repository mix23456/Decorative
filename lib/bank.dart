import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants.dart';

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
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
              ),
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
                            SizedBox(
                              width: 400,
                              child: TextField(
                                decoration: InputDecoration(
                                  // hintText: 'ชื่อ-นามสกุล',
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
                      Container(
                        color: Colors.grey,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              color: colorWhite,
                            )),
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
                border: Border.all(),
              ),
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
                            SizedBox(
                              width: 400,
                              child: TextField(
                                decoration: InputDecoration(
                                  // hintText: 'ชื่อ-นามสกุล',
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
                      Container(
                        color: Colors.grey,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                              color: colorWhite,
                            )),
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
    );
  }
}
