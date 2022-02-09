import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants.dart';
import 'package:project_curtain/detail_receip.dart';

class SearchReceipt extends StatefulWidget {
  const SearchReceipt({Key? key}) : super(key: key);

  @override
  _SearchReceiptState createState() => _SearchReceiptState();
}

class _SearchReceiptState extends State<SearchReceipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
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
          'ผลการค้นหาใบเสร็จ',
          style: GoogleFonts.kanit(fontSize: subtitle, color: colorBlack),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
            left: defaultPadding * 3,
            right: defaultPadding * 3,
            top: defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: defaultPadding),
                const Icon(Icons.search)
              ],
            ),
            const SizedBox(height: defaultPadding),
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
                          padding: const EdgeInsets.only(
                              left: defaultPadding, top: defaultPadding),
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
                          padding: const EdgeInsets.only(
                              left: defaultPadding, top: defaultPadding),
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
                          padding: const EdgeInsets.only(
                              left: defaultPadding * 2, top: defaultPadding),
                          child: Text(
                            '1.ผ้าทึบหน้าแคบ CHALEEYA (150) 100 x 200 580 บาท/ชิ้น',
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
                              left: defaultPadding * 2, top: defaultPadding),
                          child: Text(
                            '2.ผ้าทึบหน้าแคบ CHALEEYA (150) 100 x 200 580 บาท/ชิ้น',
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
                              top: defaultPadding,
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
