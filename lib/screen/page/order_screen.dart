import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'ORDER',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitel),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Text(
                'ทำการสั่งซื้อ',
                style: GoogleFonts.kanit(color: colortext1, fontSize: subtitel),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorwhite,
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_rounded),
                      const SizedBox(width: defaultPadding),
                      Text(
                        'ที่อยู่สำหรับจัดส่ง',
                        style: GoogleFonts.kanit(color: colortext2),
                      ),
                    ],
                  ),
                  ListTile(
                    title: Text(
                      'ที่อยู่รับใบเสร็จ',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    leading: Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = 1;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Text(
                    '12/3 ถนนระแกง ตำบลช้างคลาน อำเภอเมือง จังหวัดเชียงใหม่ 50100',
                    style: GoogleFonts.kanit(
                        color: colortext1, fontSize: bodytext),
                  ),
                  const SizedBox(height: defaultPadding),
                  ListTile(
                    title: Text(
                      'สถานที่ติดตั้งงาน',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    leading: Radio(
                      toggleable: true,
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = 2;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Text(
                    '12/3 ถนนระแกง ตำบลช้างคลาน อำเภอเมือง จังหวัดเชียงใหม่ 50100',
                    style: GoogleFonts.kanit(
                        color: colortext1, fontSize: bodytext),
                  ),
                  const SizedBox(height: defaultPadding),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                      ),
                    ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              color: Colors.grey,
                              width: 150,
                              height: 150,
                            ),
                            Text(
                              'ม่านสองชั้น ผ้าทึบหน้าแคบ Acacia',
                              style: GoogleFonts.kanit(
                                  color: colortext1, fontSize: bodytext),
                            ),
                          ],
                        ),
                      ],
                    ),
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
