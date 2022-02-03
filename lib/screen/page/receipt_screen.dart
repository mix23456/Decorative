import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/detail_receip.dart';
import 'package:project_curtain/details_product.dart';
import 'package:project_curtain/constants.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({Key? key}) : super(key: key);

  @override
  _ReceiptScreenState createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'CHECK',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.search,
              color: colorBlack,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ค้นหา',
                        hintStyle: GoogleFonts.kanit(color: colortext2)),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding * 5, vertical: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              child: Text(
                'รายการใบเสร็จทั้งหมด',
                style: GoogleFonts.kanit(fontSize: subtitle),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailReceip()));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Table(
                  children: [
                    TableRow(children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: defaultPadding,
                            top: defaultPadding,
                            bottom: defaultPadding),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(9),
                            topRight: Radius.circular(9),
                          ),
                          color: Colors.grey[200],
                        ),
                        child: Text(
                          'หมายเลขสั่งซื้อ : 211221-00162',
                          style: GoogleFonts.kanit(fontSize: bodytext),
                        ),
                      ),
                    ]),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: defaultPadding,
                              right: defaultPadding,
                              top: defaultPadding),
                          child: Text(
                            'คุณ แก้ว มาลูน (test)',
                            style: GoogleFonts.kanit(
                                color: Colors.grey, fontSize: bodytext),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding),
                          child: Text(
                            'บริษัท ไท',
                            style: GoogleFonts.kanit(
                                color: Colors.grey, fontSize: bodytext),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding),
                          child: Text(
                            'จำนวนรายการทั้งหมด 2 รายการ',
                            style: GoogleFonts.kanit(
                                color: Colors.grey, fontSize: bodytext),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2),
                          child: Text(
                            '1.ผ้าทึบหน้าแคบ CHALEEYA (150) 100 x 200 580 บาท/ชิ้น\n2.ผ้าทึบหน้าแคบ CHALEEYA (150) 100 x 200 580 บาท/ชิ้น',
                            style: GoogleFonts.kanit(
                                color: Colors.grey, fontSize: bodytext),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: defaultPadding,
                              right: defaultPadding,
                              bottom: defaultPadding),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'ราคารวม',
                                  style: GoogleFonts.kanit(
                                      color: const Color(0xFF707070),
                                      fontSize: bodytext),
                                ),
                                TextSpan(
                                  text: ' 1,160.00 ',
                                  style: GoogleFonts.kanit(
                                      color: const Color(0xFF3481f5),
                                      fontSize: bodytext),
                                ),
                                TextSpan(
                                  text: 'บาท',
                                  style: GoogleFonts.kanit(
                                      color: const Color(0xFF707070),
                                      fontSize: bodytext),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
