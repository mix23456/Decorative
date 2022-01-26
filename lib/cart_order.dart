import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/detail_receip2.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class CartOrder extends StatefulWidget {
  const CartOrder({Key? key}) : super(key: key);

  @override
  _CartOrderState createState() => _CartOrderState();
}

class _CartOrderState extends State<CartOrder> {
  dynamic address = 2;
  bool vat = false;
  dynamic _vat = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: colorBlack,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'CART',
          style: GoogleFonts.kanit(
            color: colorBlack,
            fontSize: subtitle,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ทำการสั่งซื้อ',
              style: GoogleFonts.kanit(
                fontSize: subtitle,
                color: colorBlack,
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: Colors.amber,
                // color: colortext2.withOpacity(0.25),
                borderRadius: BorderRadius.circular(10),
                // boxShadow: const [
                //   BoxShadow(
                //     color: colortext2,
                //     blurRadius: 5,
                //     offset: Offset(4, 4),
                //   ),
                // ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'คุณ แก้ว มาลูน',
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colorBlack),
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(width: defaultPadding),
                      Text(
                        'ที่อยู่สำหรับจัดส่ง',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  SizedBox(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                              activeColor: colorBlack,
                              value: 1,
                              groupValue: address,
                              onChanged: (value) {
                                setState(() {
                                  address = value;
                                });
                              },
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ที่อยู่รับใบเสร็จ',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext),
                                ),
                                Text(
                                  '12/3 ถนนระแกง ตำบลช้างคลาน อำเภอเมือง จังหวัดเชียงใหม่ 50100',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: defaultPadding),
                        Row(
                          children: [
                            Radio(
                              activeColor: colorBlack,
                              value: 2,
                              groupValue: address,
                              onChanged: (value) {
                                setState(() {
                                  address = value;
                                });
                              },
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'สถานที่ติดตั้งงาน',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext),
                                ),
                                Text(
                                  '12/3 ถนนระแกง ตำบลช้างคลาน อำเภอเมือง จังหวัดเชียงใหม่ 50100',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            Container(
                              color: Colors.amber,
                              width: 100,
                              height: 120,
                              // child: Image.asset(
                              //     'assets/images/img_1.png'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            Table(
                              children: [
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16, top: 16),
                                      child: Text(
                                        'ม่านสองชั้น ผ้าทึบหน้าแคบ Acacia',
                                        style: GoogleFonts.kanit(
                                            color: colortext1, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        children: [
                                          Text(
                                            'รหัสสินค้า ',
                                            style: GoogleFonts.kanit(
                                                color: colortext1,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            'A01CY04',
                                            style: GoogleFonts.kanit(
                                                color: colortext1,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        children: [
                                          Text(
                                            'สี ',
                                            style: GoogleFonts.kanit(
                                                color: colortext1,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            'CY 228/01',
                                            style: GoogleFonts.kanit(
                                                color: colortext1,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        children: [
                                          Text(
                                            'ขนาด ',
                                            style: GoogleFonts.kanit(
                                                color: colortext1,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            '100 x 200 นิ้ว',
                                            style: GoogleFonts.kanit(
                                                color: colortext1,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Row(
                                        children: [
                                          Text(
                                            'แบบเย็บ ',
                                            style: GoogleFonts.kanit(
                                                color: colortext1,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            'ม่านตาไก่',
                                            style: GoogleFonts.kanit(
                                                color: colortext1,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Text(
                                        '฿ 400.00',
                                        style: GoogleFonts.kanit(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(defaultPadding),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'หมายเหตุ',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                      const SizedBox(width: defaultPadding),
                      SizedBox(
                        width: 659,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ยอดชำระเงิน',
                        style: GoogleFonts.kanit(),
                      ),
                      Text(
                        '฿ 1,600',
                        style: GoogleFonts.kanit(),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _vat,
                            onChanged: (value) {
                              setState(() {
                                _vat = value;
                              });
                            },
                          ),
                          Text(
                            'ภาษีมูลค่าเพิ่ม (7%)',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext1),
                          )
                        ],
                      ),
                      Text(
                        '฿ 112',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'ราคาทั้งหมด',
                style: GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
              ),
              Text(
                '฿ 1,712',
                style: GoogleFonts.kanit(fontSize: bodytext, color: colorBlack),
              ),
              const SizedBox(width: defaultPadding),
              Material(
                color: colortext1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailReceip2()));
                  },
                  child: SizedBox(
                    height: kToolbarHeight,
                    width: 100,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'ออกใบเสร็จ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kanit(color: colorWhite),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}