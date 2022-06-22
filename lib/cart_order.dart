import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/detail_receip.dart';
import 'package:project_curtain/detail_receip2.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/edit_customer.dart';

class CartOrder extends StatefulWidget {
  const CartOrder({Key? key}) : super(key: key);

  @override
  _CartOrderState createState() => _CartOrderState();
}

class _CartOrderState extends State<CartOrder> {
  dynamic address = 2;
  bool vat = false;
  dynamic _vat = 2;
  bool isChecked = false;
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
        title: Text(
          'ทำการสั่งซื้อ',
          style: GoogleFonts.kanit(
            color: colorBlack,
            fontSize: subtitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: colorWhite,
          margin: const EdgeInsets.symmetric(horizontal: defaultPadding * 3),
          child: Column(
            children: [
              const SizedBox(height: defaultPadding),
              Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                    color: colorWhite,
                    border: Border.all(
                      color: colortext2.withOpacity(0.25),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: colortext2.withOpacity(0.25),
                          offset: const Offset(4, 4)),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'คุณ แก้ว มาลูน',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colorBlack),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          color: colorbgbtn,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EditCustomer()));
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: colortext2,
                              size: iconSize,
                            ),
                          ),
                        ),
                      ],
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
                    color: colorWhite,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: colortext2.withOpacity(0.25),
                        offset: const Offset(4, 4),
                      ),
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Table(
                        children: [
                          TableRow(
                            children: [
                              Container(
                                  width: 179,
                                  height: 153,
                                  child:
                                      Image.asset('assets/images/curtain.png')),
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
                                            left: defaultPadding,
                                            right: defaultPadding,
                                            top: defaultPadding),
                                        child: Text(
                                          'ม่านสองชั้น ผ้าทึบหน้าแคบ Acacia',
                                          style: GoogleFonts.kanit(
                                              color: colortext1,
                                              fontSize: bodytext),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: defaultPadding),
                                        child: Row(
                                          children: [
                                            Text(
                                              'รหัสสินค้า ',
                                              style: GoogleFonts.kanit(
                                                  color: colortext1,
                                                  fontSize: bodytext),
                                            ),
                                            Text(
                                              'A01CY04',
                                              style: GoogleFonts.kanit(
                                                  color: colortext1,
                                                  fontSize: bodytext),
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
                                            horizontal: defaultPadding),
                                        child: Row(
                                          children: [
                                            Text(
                                              'สี ',
                                              style: GoogleFonts.kanit(
                                                  color: colortext1,
                                                  fontSize: bodytext),
                                            ),
                                            Text(
                                              'CY 228/01',
                                              style: GoogleFonts.kanit(
                                                  color: colortext1,
                                                  fontSize: bodytext),
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
                                            horizontal: defaultPadding),
                                        child: Row(
                                          children: [
                                            Text(
                                              'ขนาด ',
                                              style: GoogleFonts.kanit(
                                                  color: colortext1,
                                                  fontSize: bodytext),
                                            ),
                                            Text(
                                              '100 x 200 นิ้ว',
                                              style: GoogleFonts.kanit(
                                                  color: colortext1,
                                                  fontSize: bodytext),
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
                                            horizontal: defaultPadding),
                                        child: Row(
                                          children: [
                                            Text(
                                              'แบบเย็บ ',
                                              style: GoogleFonts.kanit(
                                                  color: colortext1,
                                                  fontSize: bodytext),
                                            ),
                                            Text(
                                              'ม่านตาไก่',
                                              style: GoogleFonts.kanit(
                                                  color: colortext1,
                                                  fontSize: bodytext),
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
                                            horizontal: defaultPadding),
                                        child: Text(
                                          '฿ 400.00',
                                          style: GoogleFonts.kanit(
                                              color: Colors.black,
                                              fontSize: bodytext),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: colorWhite,
              border: Border.all(color: const Color(0xFFF5F5F5)),
              boxShadow: const [
                BoxShadow(color: colorContainer),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 64,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: colortext2.withOpacity(0.25)),
                      bottom: BorderSide(color: colortext2.withOpacity(0.25)),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: defaultPadding),
                      Text(
                        'หมายเหตุ',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                      const SizedBox(width: defaultPadding),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
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
                ),
                Container(
                  height: 64,
                  padding: const EdgeInsets.only(
                      left: defaultPadding, right: defaultPadding),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: colortext2.withOpacity(0.25),
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ยอดชำระเงิน',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '฿ 1,600',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colorBlack),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: defaultPadding * 2, right: defaultPadding),
                  height: 64,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: colortext2.withOpacity(0.25),
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: Text(
                          'ใช้ส่วนลด 0%',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colortext1),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: colortext1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '฿ 10.00',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colortext1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 64,
                  padding: const EdgeInsets.only(
                      left: defaultPadding, right: defaultPadding),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    boxShadow: [
                      BoxShadow(
                        color: colortext2.withOpacity(0.25),
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _vat,
                              activeColor: colortext1,
                              toggleable: true,
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
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '฿ 112',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colortext2),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: colorWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      'ยอดชำระทั้งหมด',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    Text(
                      '฿ 1,712',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colorBlack),
                    ),
                  ],
                ),
                const SizedBox(width: defaultPadding),
                Material(
                  color: colortext1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailReceip2()));
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
          ),
        ],
      ),
    );
  }
}
