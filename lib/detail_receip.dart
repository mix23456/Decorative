import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailReceip extends StatefulWidget {
  const DetailReceip({Key? key}) : super(key: key);

  @override
  _DetailReceipState createState() => _DetailReceipState();
}

class _DetailReceipState extends State<DetailReceip> {
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
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'ใบเสร็จ',
                    style: GoogleFonts.kanit(fontSize: 24),
                  ),
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
                            style:
                                GoogleFonts.kanit(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'เลขกำกับภาษี 062924953',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                          Text(
                            'ที่อยู่ : 188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                          Text(
                            'เบอร์ติดต่อ : 052 002620 , 0818846190',
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
                            'Bill to',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                          Text(
                            'คุณ แก้ว มาลูน',
                            style:
                                GoogleFonts.kanit(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'บริษัท ไท',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                          Text(
                            'ที่อยู่ : 12/3 ถนนระแกง ตำบลช้างคลาน อำเภอเมือง จังหวัดเชียงใหม่ 50100',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                          Text(
                            'เบอร์โทรศัพท์ : 023456789',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                          Text(
                            'อีเมล : 123@gmail.com',
                            style: GoogleFonts.kanit(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Table(
                    border: TableBorder(
                      horizontalInside: BorderSide(color: Colors.grey.shade200),
                    ),
                    columnWidths: const {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(2),
                    },
                    children: [
                      TableRow(children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.fill,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(9)),
                              color: Colors.grey[200],
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              '#',
                              style: GoogleFonts.kanit(color: Colors.grey[600]),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '1',
                            style: GoogleFonts.kanit(color: Colors.grey[600]),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.fill,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.grey[200],
                            child: Text(
                              'รหัสสินค้า (กว้าง x ยาว)',
                              style: GoogleFonts.kanit(color: Colors.grey[600]),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'A01CY03 (100 x 200)\nA01CY03 (100 x 200)\nA01CY03 (100 x 200)',
                            style: GoogleFonts.kanit(color: Colors.grey[600]),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.fill,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.grey[200],
                            child: Text(
                              'ชื่อสินค้า x จำนวน(ราคา)',
                              style: GoogleFonts.kanit(color: Colors.grey[600]),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'ผ้าทึบหน้าแคบ CHALEEYA (150) (580)x1 580.00 บาท\nผ้าทึบหน้าแคบ CHALEEYA (150) (580)x1 580.00 บาท\nผ้าทึบหน้าแคบ CHALEEYA (150) (580)x1 580.00 บาท',
                            style: GoogleFonts.kanit(color: Colors.grey[600]),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.fill,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.grey[200],
                            child: Text(
                              'ราบละเอียด',
                              style: GoogleFonts.kanit(color: Colors.grey[600]),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'โฟนโหลนแบรนด์อุรังคธาตุออดิทอเรียมฮัมเยนผู้นำโบกี้ แฟ็กซ์ไฟลท์โปรโมทกรุ๊ป อึวิภัชภาคกรีนธรรมาบ็อกซ์ คันยิโทรโข่งไดเอ็ตเทวาธิราช',
                            style: GoogleFonts.kanit(color: Colors.grey[600]),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(9)),
                            color: Colors.grey[200],
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'ราคารวม',
                            style: GoogleFonts.kanit(color: Colors.grey[600]),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            '3,480.00',
                            style: GoogleFonts.kanit(color: Colors.grey[600]),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'ราคาเต็ม',
                                style: GoogleFonts.kanit(
                                  color: const Color(0xFF707070),
                                ),
                              ),
                              TextSpan(
                                text: ' 3,480.00 ',
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
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ส่วนลด',
                              style: GoogleFonts.kanit(
                                color: const Color(0xFF707070),
                              ),
                            ),
                            TextSpan(
                              text: ' 0.00 ',
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
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ภาษีมูลค่าเพิ่ม (7%)',
                              style: GoogleFonts.kanit(
                                color: const Color(0xFF707070),
                              ),
                            ),
                            TextSpan(
                              text: ' 246.60 ',
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
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'ราคาสุทธิ (หลังหักส่วนลดและภาษีมูลค่าเพิ่ม)',
                              style: GoogleFonts.kanit(
                                color: const Color(0xFF707070),
                              ),
                            ),
                            TextSpan(
                              text: ' 3236.40 ',
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
                    ],
                  ),
                ),
                const SizedBox(height: 10),
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
          ),
        ),
      ),
    );
  }
}
