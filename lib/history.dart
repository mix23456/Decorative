import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/detail_receip.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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

      // body: Container(
      //   margin: const EdgeInsets.only(
      //       top: defaultPadding * 2,
      //       left: defaultPadding * 5,
      //       right: defaultPadding * 5,
      //       bottom: defaultPadding * 5),
      //   child: GestureDetector(
      //     onTap: () {
      //       Navigator.push(context,
      //           MaterialPageRoute(builder: (context) => const DetailReceip()));
      //     },
      //     child: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(color: colorbgbtn),
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       // child: Column(
      //       //   children: [
      //       //     Table(
      //       //       children: [
      //       //         TableRow(children: [
      //       //           Container(
      //       //             padding: const EdgeInsets.only(
      //       //                 left: defaultPadding,
      //       //                 top: defaultPadding,
      //       //                 bottom: defaultPadding),
      //       //             decoration: const BoxDecoration(
      //       //               borderRadius: BorderRadius.only(
      //       //                 topLeft: Radius.circular(10),
      //       //                 topRight: Radius.circular(10),
      //       //               ),
      //       //               color: colorBorder,
      //       //             ),
      //       //             child: Row(
      //       //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       //               children: [
      //       //                 Text(
      //       //                   'หมายเลขสั่งซื้อ : 211221-00162',
      //       //                   style: GoogleFonts.kanit(fontSize: bodytext),
      //       //                 ),
      //       //                 Text(
      //       //                   'สำเร็จแล้ว',
      //       //                   style: GoogleFonts.kanit(
      //       //                       color: colortext1, fontSize: bodytext),
      //       //                 ),
      //       //               ],
      //       //             ),
      //       //           ),
      //       //         ]),
      //       //       ],
      //       //     ),
      //       //     // Container(
      //       //     //   padding: const EdgeInsets.all(defaultPadding),
      //       //     //   decoration: BoxDecoration(
      //       //     //     border: Border.all(width: 2, color: colorBorder),
      //       //     //     borderRadius: const BorderRadius.only(
      //       //     //       topLeft: Radius.circular(10),
      //       //     //       topRight: Radius.circular(10),
      //       //     //     ),
      //       //     //   ),
      //       //     //   child: Row(
      //       //     //     crossAxisAlignment: CrossAxisAlignment.start,
      //       //     //     children: [
      //       //     //       Expanded(
      //       //     //         child: Table(
      //       //     //           children: [
      //       //     //             TableRow(children: [
      //       //     //               Container(
      //       //     //                 color: colorBlack,
      //       //     //                 alignment: Alignment.center,
      //       //     //                 height: 50.0,
      //       //     //               ),
      //       //     //             ]),
      //       //     //             TableRow(children: [
      //       //     //               Container(
      //       //     //                 height: 60,
      //       //     //               ),
      //       //     //             ]),
      //       //     //             TableRow(
      //       //     //                 decoration: const BoxDecoration(
      //       //     //                     borderRadius: BorderRadius.only(
      //       //     //                         topLeft: Radius.circular(10.0))),
      //       //     //                 children: [
      //       //     //                   Container(
      //       //     //                       alignment: Alignment.centerLeft,
      //       //     //                       height: 30.0,
      //       //     //                       child: Text('4 ชิ้น',
      //       //     //                           style: GoogleFonts.kanit(
      //       //     //                               fontSize: bodytext,
      //       //     //                               color: colortext1))),
      //       //     //                 ]),
      //       //     //           ],
      //       //     //         ),
      //       //     //       ),
      //       //     //       Expanded(
      //       //     //         child: Table(
      //       //     //           children: [
      //       //     //             TableRow(
      //       //     //                 decoration: const BoxDecoration(
      //       //     //                     borderRadius: BorderRadius.only(
      //       //     //                         topRight: Radius.circular(10.0))),
      //       //     //                 children: [
      //       //     //                   Container(
      //       //     //                       alignment: Alignment.centerLeft,
      //       //     //                       height: 30.0,
      //       //     //                       child: Text('ชื่อผลงาน :',
      //       //     //                           style: GoogleFonts.kanit(
      //       //     //                               fontSize: bodytext,
      //       //     //                               color: colortext1)))
      //       //     //                 ]),
      //       //     //             TableRow(children: [
      //       //     //               Container(
      //       //     //                   alignment: Alignment.centerLeft,
      //       //     //                   height: 30.0,
      //       //     //                   child: Text('ที่อยู่งาน :',
      //       //     //                       style: GoogleFonts.kanit(
      //       //     //                           fontSize: bodytext,
      //       //     //                           color: colortext1)))
      //       //     //             ]),
      //       //     //             TableRow(children: [
      //       //     //               Container(
      //       //     //                   alignment: Alignment.centerRight,
      //       //     //                   height: 30.0,
      //       //     //                   child: Text('฿ 5,855.00',
      //       //     //                       style: GoogleFonts.kanit(
      //       //     //                           fontSize: bodytext,
      //       //     //                           color: colortext1)))
      //       //     //             ]),
      //       //     //           ],
      //       //     //         ),
      //       //     //       ),
      //       //     //     ],
      //       //     //   ),
      //       //     // ),
      //       //   ],
      //       // ),
      //     ),
      //   ),
      // ),
    );
  }
}
