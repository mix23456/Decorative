import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/cart_order.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _value = 1;
  bool checkProd = false;
  bool checkAll = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'ORDER',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.search,
              color: colorBlack,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'ค้นหา',
                        hintStyle: GoogleFonts.kanit(color: colortext2)),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Text(
                  'สินค้าในตะกร้า',
                  style:
                      GoogleFonts.kanit(color: colortext1, fontSize: subtitle),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(defaultPadding),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: colorWhite,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5), blurRadius: 5),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(bottom: defaultPadding / 2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Table(
                            children: [
                              TableRow(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                      left: 16,
                                      right: 16,
                                      top: 16,
                                      bottom: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(9),
                                        topRight: Radius.circular(9),
                                      ),
                                      border: Border.all(
                                        color: const Color(0xFFF5F5F5),
                                      ),
                                      // color: Colors.grey[200],
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            // color: Colors.amber,
                                            child: Text(
                                              'คุณ แก้ว มาลูน',
                                              style: GoogleFonts.kanit(
                                                  fontSize: subtitle),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  color: lightGray,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                              0xFFABAAAC)
                                                          .withOpacity(0.25),
                                                      blurRadius: 10,
                                                      offset:
                                                          const Offset(4, 4),
                                                    ),
                                                  ],
                                                ),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.edit_outlined,
                                                    color: colortext1,
                                                    size: bodytext,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                  color: colortext1,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                              0xFFABAAAC)
                                                          .withOpacity(0.25),
                                                      blurRadius: 10,
                                                      offset:
                                                          const Offset(4, 4),
                                                    ),
                                                  ],
                                                ),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.delete_outline,
                                                    color: colorWhite,
                                                    size: bodytext,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: checkProd,
                                onChanged: (value) {
                                  setState(() {
                                    checkProd = !checkProd;
                                  });
                                },
                              ),
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
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal:
                                                          defaultPadding),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'รหัสสินค้า ',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      ),
                                                      Text(
                                                        'A01CY04',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TableRow(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal:
                                                          defaultPadding),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'สี ',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      ),
                                                      Text(
                                                        'CY 228/01',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TableRow(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal:
                                                          defaultPadding),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'ขนาด ',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      ),
                                                      Text(
                                                        '100 x 200 นิ้ว',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TableRow(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal:
                                                          defaultPadding),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'แบบเย็บ ',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      ),
                                                      Text(
                                                        'ม่านตาไก่',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TableRow(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal:
                                                          defaultPadding),
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
                        ],
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Checkbox(
                  value: checkAll,
                  onChanged: (value) {
                    setState(() {
                      checkAll = !checkAll;
                    });
                  },
                ),
                Text(
                  'ทั้งหมด',
                  style: GoogleFonts.kanit(
                    fontSize: bodytext,
                    color: colortext1,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'ราคาทั้งหมด',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
                ),
                Text(
                  '฿ 1,600',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colorBlack),
                ),
                const SizedBox(width: defaultPadding),
                Material(
                  color: colortext1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartOrder(),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: kToolbarHeight,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ชำระเงิน',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.kanit(color: colorWhite),
                          ),
                          Text(
                            '(4)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.kanit(color: colorWhite),
                          )
                        ],
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
