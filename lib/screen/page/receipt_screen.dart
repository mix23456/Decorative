import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/detail_receip.dart';

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
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailReceip(),
                    ),
                  );
                },
                icon: Icon(Icons.add)),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Text(
                      'หมายเลขสั่งซื้อ : ',
                      style: GoogleFonts.kanit(),
                    ),
                  ),
                  Text(
                    'คุณ ',
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    'บริษัท ',
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    'จำนวนรายการทั้งหมด',
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    'ราคารวม ',
                    style: GoogleFonts.kanit(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
