import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/detail_receip.dart';
import 'package:project_curtain/details_screen.dart';

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
          style: GoogleFonts.kanit(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'รายการใบเสร็จทั้งหมด',
              style: GoogleFonts.kanit(fontSize: 24),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailReceip()));
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
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(9),
                            topRight: Radius.circular(9),
                          ),
                          color: Colors.grey[200],
                        ),
                        child: Text(
                          'หมายเลขสั่งซื้อ : 211221-00162',
                          style: GoogleFonts.kanit(),
                        ),
                      ),
                    ]),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'คุณ แก้ว มาลูน (test)',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'บริษัท ไท',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'จำนวนรายการทั้งหมด 2 รายการ\n1.ผ้าทึบหน้าแคบ CHALEEYA (150) 100 x 200 580 บาท/ชิ้น\n1.ผ้าทึบหน้าแคบ CHALEEYA (150) 100 x 200 580 บาท/ชิ้น',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'ราคารวม',
                                  style: GoogleFonts.kanit(
                                    color: const Color(0xFF707070),
                                  ),
                                ),
                                TextSpan(
                                  text: ' 1,160.00 ',
                                  style: GoogleFonts.kanit(
                                    color: const Color(0xFF3481f5),
                                  ),
                                ),
                                TextSpan(
                                  text: 'บาท',
                                  style: GoogleFonts.kanit(
                                    color: const Color(0xFF707070),
                                  ),
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
