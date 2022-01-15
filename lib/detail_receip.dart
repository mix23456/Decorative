import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailReceip extends StatefulWidget {
  const DetailReceip({Key? key}) : super(key: key);

  @override
  _DetailReceipState createState() => _DetailReceipState();
}

class _DetailReceipState extends State<DetailReceip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Detail',
          style: GoogleFonts.kanit(color: Colors.black),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ใบเสร็จ',
                style: GoogleFonts.kanit(fontSize: 24),
              ),
              const SizedBox(height: 10),
              Text(
                'ใบเสร็จที่ 1 หมายเลขสั่งซื้อ 211221-00162',
                style: GoogleFonts.kanit(color: Colors.grey),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bill From',
                          style: GoogleFonts.kanit(color: Colors.grey),
                        ),
                        Text(
                          'บริษัท DK decorative',
                          style: GoogleFonts.kanit(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'เลขกำกับภาษี 062924953',
                          style: GoogleFonts.kanit(color: Colors.grey),
                        ),
                        Text(
                          'ที่อยู่ 188/5-6 ',
                          style: GoogleFonts.kanit(color: Colors.grey),
                        ),
                        Text(
                          'เบอร์โทรติดต่อ ',
                          style: GoogleFonts.kanit(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Bill From',
                          style: GoogleFonts.kanit(color: Colors.grey),
                        ),
                        Text(
                          'บริษัท DK decorative',
                          style: GoogleFonts.kanit(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'เลขกำกับภาษี 062924953',
                          style: GoogleFonts.kanit(color: Colors.grey),
                        ),
                        Text(
                          'ที่อยู่ 188/5-6 ',
                          style: GoogleFonts.kanit(color: Colors.grey),
                        ),
                        Text(
                          'เบอร์โทรติดต่อ ',
                          style: GoogleFonts.kanit(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey[300],
                      child: Column(
                        children: [
                          Text(
                            '#',
                            style: GoogleFonts.kanit(),
                          ),
                          Text(
                            '#',
                            style: GoogleFonts.kanit(),
                          ),
                          Text(
                            '#',
                            style: GoogleFonts.kanit(),
                          ),
                          Text(
                            '#',
                            style: GoogleFonts.kanit(),
                          ),
                          Text(
                            '#',
                            style: GoogleFonts.kanit(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            '1',
                            style: GoogleFonts.kanit(),
                          ),
                          Text(
                            '1',
                            style: GoogleFonts.kanit(),
                          ),
                          Text(
                            '1',
                            style: GoogleFonts.kanit(),
                          ),
                          Text(
                            '1',
                            style: GoogleFonts.kanit(),
                          ),
                          Text(
                            '1',
                            style: GoogleFonts.kanit(),
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
    );
  }
}
