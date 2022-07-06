import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/page/cart_order.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/model/model_provider/order.dart';
import 'package:project_curtain/page/edit/edit_product.dart';
import 'package:intl/intl.dart';
import 'package:project_curtain/page/search/search_order.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int totalprice = 0;
  NumberFormat priceformat = NumberFormat.decimalPattern('en_us');

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
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'ค้นหา',
                              hintStyle: GoogleFonts.kanit(color: colortext2)),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SearchOrder()));
                          },
                          icon: const Icon(
                            Icons.search,
                            color: colorBlack,
                          ))
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: defaultPadding,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 2, vertical: defaultPadding),
            child: (Order.orderlistmap.isEmpty)
                ? Center(
                    child: Text(
                      'ไม่มีสินค้าในตะกร้า',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.kanit(fontSize: subtitle),
                    ),
                  )
                : Text(
                    'สินค้าในตะกร้า',
                    style: GoogleFonts.kanit(fontSize: subtitle),
                  ),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: context.watch<Order>().ordercart,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 2,
                    vertical: defaultPadding,
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: colorWhite,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                bottom: defaultPadding / 2),
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
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(9),
                                              topRight: Radius.circular(9),
                                            ),
                                            border: Border.all(
                                              color: colorBorder,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  '${Order.orderlistmap[index]["titlename"]}',
                                                  style: GoogleFonts.kanit(
                                                      fontSize: bodytext),
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
                                                        color: colortext1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: colortext2
                                                                .withOpacity(
                                                                    0.25),
                                                            blurRadius: 10,
                                                            offset:
                                                                const Offset(
                                                                    4, 4),
                                                          ),
                                                        ],
                                                      ),
                                                      child: IconButton(
                                                        onPressed: () {
                                                          showPopupRemoveOrder(
                                                              index);
                                                        },
                                                        icon: const Icon(
                                                          Icons.delete_outline,
                                                          color: colorWhite,
                                                          size: iconSize,
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
                                      value: Order.orderlistmap[index]
                                                  ['ischeck'] ==
                                              'true'
                                          ? true
                                          : false,
                                      onChanged: (value) {
                                        setState(() {
                                          Order.orderlistmap[index]
                                                      ['ischeck'] ==
                                                  'true'
                                              ? Order.orderlistmap[index]
                                                  ['ischeck'] = 'false'
                                              : Order.orderlistmap[index]
                                                  ['ischeck'] = 'true';
                                          totalprice = Order.totalprice();
                                        });
                                      },
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Table(
                                        children: [
                                          TableRow(
                                            children: [
                                              SizedBox(
                                                  width: 179,
                                                  height: 153,
                                                  child: Image.asset(
                                                    '${Order.orderlistmap[index]['image']}',
                                                    fit: BoxFit.contain,
                                                  )),
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
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: defaultPadding,
                                                  right: defaultPadding,
                                                  top: defaultPadding,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        '${Order.orderlistmap[index]['productname']}',
                                                        style:
                                                            GoogleFonts.kanit(
                                                                color:
                                                                    colortext1,
                                                                fontSize:
                                                                    bodytext),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 32,
                                                          height: 32,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: lightGray,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: colortext2
                                                                    .withOpacity(
                                                                        0.25),
                                                                blurRadius: 10,
                                                                offset:
                                                                    const Offset(
                                                                        4, 4),
                                                              ),
                                                            ],
                                                          ),
                                                          child: IconButton(
                                                            onPressed: () {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              const EditDetailScreen()));
                                                            },
                                                            icon: const Icon(
                                                              Icons
                                                                  .edit_outlined,
                                                              color: colortext1,
                                                              size: iconSize,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 32,
                                                          height: 32,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: colortext1,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: colortext2
                                                                    .withOpacity(
                                                                        0.25),
                                                                blurRadius: 10,
                                                                offset:
                                                                    const Offset(
                                                                        4, 4),
                                                              ),
                                                            ],
                                                          ),
                                                          child: Center(
                                                            child: IconButton(
                                                              onPressed: () {
                                                                showPopupRemoveOrder(
                                                                    index);
                                                              },
                                                              icon: const Icon(
                                                                Icons
                                                                    .delete_outline,
                                                                color:
                                                                    colorWhite,
                                                                size: iconSize,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: defaultPadding,
                                                    left: defaultPadding),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'รหัสสินค้า ${Order.orderlistmap[index]['productid']}',
                                                      style: GoogleFonts.kanit(
                                                          color: colortext1,
                                                          fontSize: bodytext),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: defaultPadding,
                                                    left: defaultPadding),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'สี ${Order.orderlistmap[index]['productcolor']}',
                                                      style: GoogleFonts.kanit(
                                                          color: colortext1,
                                                          fontSize: bodytext),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: defaultPadding,
                                                    left: defaultPadding),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'ขนาด ${Order.orderlistmap[index]['productsize']} นิ้ว',
                                                      style: GoogleFonts.kanit(
                                                          color: colortext1,
                                                          fontSize: bodytext),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: defaultPadding,
                                                    left: defaultPadding),
                                                child: Text(
                                                  'ราคาต่อชิ้น ฿ ${priceformat.format(int.parse(Order.orderlistmap[index]['price'].toString()))} ',
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
                                                padding: const EdgeInsets.only(
                                                    top: defaultPadding,
                                                    bottom: defaultPadding,
                                                    left: defaultPadding),
                                                child: Text(
                                                  'ราคารวม ฿ ${priceformat.format(int.parse(Order.orderlistmap[index]['price'].toString()))}',
                                                  style: GoogleFonts.kanit(
                                                      color: Colors.black,
                                                      fontSize: bodytext),
                                                ),
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
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Checkbox(
                  value: Order.isallcheck(),
                  onChanged: (value) {
                    setState(() {
                      Order.allcheck(!Order.isallcheck());
                      totalprice = Order.totalprice();
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
                  '',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
                ),
                Text(
                  '฿ ${priceformat.format(totalprice)}',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colorBlack),
                ),
                const SizedBox(width: defaultPadding),
                Material(
                  color: colortext1,
                  child: InkWell(
                    onTap: () {
                      (Order.orderlistmap.isEmpty)
                          ? dialog('ไม่มีสินค้าในตะกร้า')
                          : Navigator.push(
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
                            '(${Order.countcheck()})',
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

  void dialog(String temp) {
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
                  temp,
                  style: GoogleFonts.kanit(fontSize: bodytext),
                )),
          );
        });
  }

  void showPopupRemoveOrder(int index) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              width: 320,
              height: 120,
              child: Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      width: defaultPadding,
                      height: defaultPadding,
                    ),
                    Text('ยืนยันจะลบออเดอร์นี้',
                        style: GoogleFonts.kanit(fontSize: bodytext)),
                    const SizedBox(height: defaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              primary: const Color(0xFFD4D4D4),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'ยกเลิก',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colortext1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              primary: colortext1,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              setState(() {
                                context.read<Order>().removeorder(index);
                              });
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Container(
                                          alignment: Alignment.center,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.25,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            'ลบออเดอร์สำเร็จ',
                                            style: GoogleFonts.kanit(
                                                fontSize: bodytext),
                                          )),
                                    );
                                  });
                            },
                            child: Text(
                              'ยืนยัน',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colorWhite),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
