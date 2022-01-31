import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_curtain/constants.dart';

class DetailReceip2 extends StatefulWidget {
  const DetailReceip2({Key? key}) : super(key: key);

  @override
  _DetailReceipState2 createState() => _DetailReceipState2();
}

class _DetailReceipState2 extends State<DetailReceip2> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.77972, -122.431297),
    zoom: 11.5,
  );
  late GoogleMapController _googleMapController;
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
          'Detail',
          style: GoogleFonts.kanit(color: Colors.black),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
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
                                'บันทึกรูปภาพสำเร็จ',
                                style: GoogleFonts.kanit(fontSize: bodytext),
                              )),
                        );
                      });
                },
                icon: const Icon(
                  Icons.download,
                  color: colortext2,
                ),
              ),
              Text(
                'บันทึกใบเสร็จ',
                style: GoogleFonts.kanit(
                    fontSize: bodytext,
                    color: colortext2,
                    decoration: TextDecoration.underline),
              ),
              const SizedBox(width: defaultPadding)
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(defaultPadding),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                child: Text(
                  'ออกใบเสร็จ',
                  style: GoogleFonts.kanit(fontSize: subtitle),
                ),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: colorBorder),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Table(
                              children: [
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      height: 30.0,
                                      child: Text(
                                          'ใบเสร็จที่ 1 หมายเลขสั้งซื้อ 211221-00162 ชำระเงินแล้ว',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1))),
                                ]),
                                TableRow(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0))),
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          height: 30.0,
                                          child: Text('Bill Form',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1))),
                                    ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      height: 30.0,
                                      child: Text('บริษัท DK decorative',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1))),
                                ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      height: 30.0,
                                      child: Text('เลขกำกับภาษี 062924953',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1))),
                                ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      height: 30.0,
                                      child: Text(
                                          'ที่อยู่ : 188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1))),
                                ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      height: 30.0,
                                      child: Text(
                                          'เบอร์ติดต่อ : 052 002620 , 0818846190',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1))),
                                ]),
                                TableRow(children: [
                                  Container(
                                    height: 30,
                                  ),
                                ]),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Table(
                              children: [
                                TableRow(children: [
                                  Container(
                                    height: 30,
                                  ),
                                ]),
                                TableRow(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.0))),
                                    children: [
                                      Container(
                                          alignment: Alignment.centerRight,
                                          height: 30.0,
                                          child: Text('Bill to',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1)))
                                    ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerRight,
                                      height: 30.0,
                                      child: Text('คุณ แก้ว มาลูน',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1)))
                                ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerRight,
                                      height: 30.0,
                                      child: Text('บริษัท ไท',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1)))
                                ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerRight,
                                      height: 30.0,
                                      child: Text(
                                          'ที่อยู่ : 188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1)))
                                ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerRight,
                                      height: 30.0,
                                      child: Text('เบอร์ติดต่อ : 023456789',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1)))
                                ]),
                                TableRow(children: [
                                  Container(
                                      alignment: Alignment.centerRight,
                                      height: 30.0,
                                      child: Text('อีเมล : 123@gmail.com',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1)))
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Table(
                      border: const TableBorder(
                        left: BorderSide(width: 2, color: colorBorder),
                        right: BorderSide(width: 2, color: colorBorder),
                        horizontalInside: BorderSide(color: colorBorder),
                      ),
                      columnWidths: const {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(4),
                      },
                      children: [
                        TableRow(children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(
                                color: colorBorder,
                              ),
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Text(
                                '#',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Text(
                              '1',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colortext1),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.all(defaultPadding),
                              color: colorBorder,
                              child: Text(
                                'รหัสสินค้า (ขนาด)',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Text(
                              'A01CY03 CY 228/01 (400 x 500)',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colortext1),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.all(defaultPadding),
                              color: colorBorder,
                              child: Text(
                                'ชื่อสินค้า',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'ผ้าทึบหน้าแคบ CHALEEYA (150)',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                                Text(
                                  '580.00 บาท',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        TableRow(
                          children: [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.fill,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.all(defaultPadding),
                                color: colorBorder,
                                child: Text(
                                  'รายละเอียด',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Text(
                                'โฟนโหลนแบรนด์อุรังคธาตุออดิทอเรียมฮัมเยนผู้นำโบกี้\nแฟ็กซ์ไฟลท์โปรโมทกรุ๊ป อึวิภัชภาคกรีนธรรมาบ็อกซ์\nคันยิโทรโข่งไดเอ็ตเทวาธิราช',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ),
                            ),
                          ],
                        ),
                        TableRow(children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: colorBorder,
                            ),
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Text(
                              'ราคารวม',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colortext1),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Text(
                              '3,480.00',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colortext1),
                            ),
                          ),
                        ]),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: colorBorder),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Table(
                              children: [
                                TableRow(children: [
                                  Container(
                                    height: 30,
                                  )
                                ]),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Table(
                              children: [
                                TableRow(children: [
                                  Container(
                                    height: 30,
                                  ),
                                ]),
                                TableRow(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.0))),
                                    children: [
                                      Container(
                                        alignment: Alignment.centerRight,
                                        height: 30.0,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'ราคาเต็ม',
                                                style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' 3,480.00 ',
                                                style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colorBlue,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'บาท',
                                                style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                                TableRow(children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    height: 30.0,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'ส่วนลด',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' 0.00 ',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colorBlue,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'บาท',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                                TableRow(children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    height: 30.0,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'ภาษีมูลค่าเพิ่ม (7%)',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' 246.60 ',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colorBlue,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'บาท',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                                TableRow(children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    height: 30.0,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'ราคาสุทธิ (หลังหักส่วนลดและภาษีมูลค่าเพิ่ม)',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' 3236.40 ',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colorBlue,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'บาท',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: defaultPadding),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'แผนที่สถานที่ติดตั้งงาน',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colorBlack),
                      ),
                      const Icon(Icons.location_on, color: colorBlack)
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: GoogleMap(
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                      zoomControlsEnabled: true,
                      initialCameraPosition: _initialCameraPosition,
                      onMapCreated: (controller) =>
                          _googleMapController = controller,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
              Center(
                child: Column(
                  children: [
                    Text(
                      'ชำระเงิน',
                      style: GoogleFonts.kanit(fontSize: bodytext),
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      'Prompt Pay',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    const SizedBox(height: defaultPadding),
                    Container(
                      width: 100,
                      height: 100,
                      color: colorContainer,
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      'แสกน QR เพื่อโอนเข้าบัญชี',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      'ชื่อ :',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      'บัญชี :',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      'เลขอ้างอิง :',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
