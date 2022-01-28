import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/detail_receip.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'ประวัติสั้งซื้อ',
          style: GoogleFonts.kanit(color: Colors.black),
        ),
      ),
      body: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailReceip()));
          },
          child: Center(
              child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: colorbgbtn),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Table(
                      children: [
                        TableRow(
                            decoration: const BoxDecoration(
                                color: colorBorder,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0))),
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(defaultPadding),
                                  height: 60.0,
                                  child: Text(
                                    'หมายเลขสั่งซื้อ: 211221-00162',
                                    style:
                                        GoogleFonts.kanit(fontSize: bodytext),
                                  )),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                            ),
                            children: [
                              Container(
                                padding: const EdgeInsets.all(defaultPadding),
                                height: 60.0,
                                color: colorBlack,
                              ),
                            ]),
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              height: 60.0,
                              child: Text(
                                '4 ชิ้น',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              )),
                        ]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Table(
                      children: [
                        TableRow(
                            decoration: const BoxDecoration(
                                color: colorBorder,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0))),
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(defaultPadding),
                                  alignment: Alignment.centerRight,
                                  height: 60.0,
                                  child: Text(
                                    'สำเร็จแล้ว',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colortext1),
                                  ))
                            ]),
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              height: 60.0,
                              child: Text(
                                'ชื่อผลงาน :',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ))
                        ]),
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              height: 60.0,
                              child: Text(
                                'ที่อยู่งาน :',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ))
                        ]),
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              alignment: Alignment.centerRight,
                              height: 60.0,
                              child: Text(
                                '฿ 5,850.00',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ))
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]))),
    );
  }
}
