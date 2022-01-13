// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_curtain/screen/constants/product.dart';
// import 'package:project_curtain/screen/customer/select_cumtomer.dart';
// import 'package:project_curtain/screen/product/constants.dart';
// import 'package:project_curtain/screen/product/product_item.dart';

// class OrderScreen extends StatefulWidget {
//   const OrderScreen({Key? key}) : super(key: key);

//   @override
//   _OrderScreenState createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<OrderScreen> {
//   int totalDiscount = 0;
//   String discount = '0';
//   dynamic val1 = 2;
//   dynamic val2 = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('รายการสินค้า',
//                     style: GoogleFonts.kanit(fontSize: 30)),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Radio(
//                       value: 1,
//                       groupValue: val1,
//                       onChanged: (value) {
//                         setState(() {
//                           val1 = value;
//                         });
//                       }),
//                   Text(
//                     'ประมูล',
//                     style: GoogleFonts.kanit(),
//                   ),
//                   Radio(
//                       value: 2,
//                       groupValue: val1,
//                       onChanged: (value) {
//                         setState(() {
//                           val1 = value;
//                         });
//                       }),
//                   Text(
//                     'ไม่ประมูล',
//                     style: GoogleFonts.kanit(),
//                   ),
//                 ],
//               ),

//               SizedBox(
//                 width: double.maxFinite,
//                 child: Card(
//                   shadowColor: Colors.black,
//                   elevation: 5,
//                   child: Padding(
//                     padding: const EdgeInsets.all(3),
//                     child: Stack(
//                       children: [
//                         Stack(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: defaultPadding / 4),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   _buttonDelete(),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       _image(),
//                                       const SizedBox(width: defaultPadding / 2),
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           _productName(),
//                                           const SizedBox(
//                                               height: defaultPadding / 2),
//                                           _productPrice(),
//                                           const SizedBox(
//                                               height: defaultPadding / 2),
//                                           _productSum(),
//                                           const SizedBox(
//                                               height: defaultPadding / 2),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                   _totalPrice(),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),

//               // Padding(
//               //   padding: const EdgeInsets.symmetric(vertical: 10),
//               //   child: Container(
//               //     height: 300,
//               //     decoration: BoxDecoration(
//               //       color: Colors.black12,
//               //       border: Border.all(color: Colors.black26),
//               //       borderRadius: BorderRadius.circular(10),
//               //     ),
//               //     child: Column(
//               //       crossAxisAlignment: CrossAxisAlignment.start,
//               //       children: [
//               //         Padding(
//               //           padding: const EdgeInsets.only(
//               //               left: 12, top: 8, bottom: 10, right: 12),
//               //           child: Column(
//               //             children: [
//               //               Text(
//               //                 "เลือก",
//               //                 style: GoogleFonts.kanit(),
//               //               ),
//               //             ],
//               //           ),
//               //         ),
//               //       ],
//               //     ),
//               //   ),
//               // ),

//               // Padding(
//               //   padding: const EdgeInsets.symmetric(vertical: 10),
//               //   child: Container(
//               //     padding: const EdgeInsets.all(5),
//               //     decoration: BoxDecoration(
//               //       color: Colors.grey[100],
//               //       border: Border.all(color: Colors.grey.shade300),
//               //       borderRadius: BorderRadius.circular(10),
//               //     ),
//               //     child: Column(
//               //       crossAxisAlignment: CrossAxisAlignment.start,
//               //       children: [
//               //         Text(
//               //           'เลือก',
//               //           style: GoogleFonts.kanit(fontSize: 20),
//               //         ),
//               //         Row(
//               //           mainAxisAlignment: MainAxisAlignment.center,
//               //           children: [
//               //             Row(
//               //               children: [
//               //                 Radio(
//               //                     value: 1,
//               //                     groupValue: val2,
//               //                     onChanged: (value) {
//               //                       setState(() {
//               //                         val2 = value;
//               //                       });
//               //                     }),
//               //                 Text(
//               //                   'เพิ่ม VAT',
//               //                   style: GoogleFonts.kanit(),
//               //                 ),
//               //               ],
//               //             ),
//               //             Row(
//               //               children: [
//               //                 Radio(
//               //                     value: 2,
//               //                     groupValue: val2,
//               //                     onChanged: (value) {
//               //                       setState(() {
//               //                         val2 = value;
//               //                       });
//               //                     }),
//               //                 Text(
//               //                   'ไม่เพิ่ม VAT',
//               //                   style: GoogleFonts.kanit(),
//               //                 ),
//               //               ],
//               //             ),
//               //             Row(
//               //               children: [
//               //                 Radio(
//               //                     value: 3,
//               //                     groupValue: val2,
//               //                     onChanged: (value) {
//               //                       setState(() {
//               //                         val2 = value;
//               //                       });
//               //                     }),
//               //                 Text(
//               //                   'หักภาษี ณ ที่จ่าย',
//               //                   style: GoogleFonts.kanit(),
//               //                 ),
//               //               ],
//               //             ),
//               //           ],
//               //         ),
//               //         const Divider(
//               //           color: Colors.black,
//               //           thickness: 1,
//               //         ),
//               //         Row(
//               //           children: [
//               //             Text(
//               //               "ออกใบเสนอราคาใน PDF",
//               //               style: GoogleFonts.kanit(),
//               //             ),
//               //             const SizedBox(width: 10),
//               //             ElevatedButton(
//               //               onPressed: () {},
//               //               child: Text(
//               //                 "PDF",
//               //                 style: GoogleFonts.kanit(),
//               //               ),
//               //             ),
//               //           ],
//               //         ),
//               //         const Divider(
//               //           color: Colors.black,
//               //           thickness: 1,
//               //         ),
//               //         Align(
//               //           alignment: Alignment.centerLeft,
//               //           child: Row(
//               //             children: [
//               //               Text(
//               //                 "ส่วนลด :",
//               //                 style: GoogleFonts.kanit(),
//               //               ),
//               //               const SizedBox(width: 10),
//               //               // Text(discount),
//               //               SizedBox(
//               //                 height: 50,
//               //                 width: 50,
//               //                 child: TextFormField(
//               //                   // initialValue: discount,
//               //                   inputFormatters: [
//               //                     LengthLimitingTextInputFormatter(2),
//               //                   ],
//               //                   keyboardType: TextInputType.number,
//               //                   decoration: const InputDecoration(
//               //                     focusedBorder: OutlineInputBorder(
//               //                       borderSide: BorderSide(color: Colors.black),
//               //                     ),
//               //                     enabledBorder: OutlineInputBorder(
//               //                       borderSide: BorderSide(color: Colors.black),
//               //                     ),
//               //                   ),
//               //                   // onSaved: (value) => {
//               //                   //   if (int.parse(value.toString()) > 15)
//               //                   //     {setState(() => discount = '15')}
//               //                   //   else
//               //                   //     {setState(() => discount = value.toString())}
//               //                   // },
//               //                 ),
//               //               ),
//               //               const SizedBox(width: 10),
//               //               Text(
//               //                 '%',
//               //                 style: GoogleFonts.kanit(),
//               //               ),
//               //             ],
//               //           ),
//               //         ),
//               //         const Divider(
//               //           color: Colors.black,
//               //           thickness: 1,
//               //         ),
//               //         Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               "หมายเหตุ :",
//               //               style: GoogleFonts.kanit(fontSize: 16),
//               //             ),
//               //             SizedBox(
//               //               width: double.infinity,
//               //               child: TextFormField(
//               //                 decoration: const InputDecoration(
//               //                   focusedBorder: OutlineInputBorder(
//               //                     borderSide: BorderSide(color: Colors.black),
//               //                   ),
//               //                   enabledBorder: OutlineInputBorder(
//               //                     borderSide: BorderSide(color: Colors.black),
//               //                   ),
//               //                 ),
//               //               ),
//               //             ),
//               //           ],
//               //         ),
//               //       ],
//               //     ),
//               //   ),
//               // ),

//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: Container(
//                   height: 180,
//                   margin: const EdgeInsets.only(bottom: 30),
//                   width: MediaQuery.of(context).size.width - 20,
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade100,
//                     border: Border.all(
//                       color: Colors.grey.shade300,
//                     ),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             left: 12, top: 8, bottom: 10, right: 12),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'สรุปคำสั่งซื้อ',
//                                 style: GoogleFonts.kanit(
//                                     color: Colors.blue,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w400),
//                               ),
//                               const SizedBox(
//                                 height: 11,
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'ยอดรวม',
//                                     // 'ยอดรวม(${quantity.toString()} ชิ้น)',
//                                     style: GoogleFonts.kanit(
//                                         color: Colors.grey,
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     'ส่วนลด',
//                                     style: GoogleFonts.kanit(
//                                         color: Colors.grey,
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400),
//                                   ),
//                                   Text(
//                                     '-฿${totalDiscount.toString()}',
//                                     style: GoogleFonts.kanit(
//                                         color: Colors.black,
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w700),
//                                   ),
//                                 ],
//                               )
//                             ]),
//                       ),
//                       const Divider(),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 10, vertical: 0),
//                         child: Row(
//                           children: [
//                             Text(
//                               'ราคาทั้งหมด:',
//                               style: GoogleFonts.kanit(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             const Spacer(),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 // Text(
//                                 //   total - totalDiscount > 0
//                                 //       ? '฿${GoogleSignInApi.formatNumber((total - totalDiscount))}'
//                                 //       : '0',
//                                 //   style: GoogleFonts.kanit(
//                                 //       color: Colors.red,
//                                 //       fontSize: 20,
//                                 //       fontWeight: FontWeight.w400),
//                                 // ),
//                                 Text(
//                                   '(รวมภาษีมูลค่าเพิ่ม)',
//                                   style: GoogleFonts.kanit(
//                                       color: Colors.grey,
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomSheet: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 5),
//         child: SizedBox(
//           width: double.infinity,
//           child: ElevatedButton(
//             child: Text(
//               "สั่งซื้อ",
//               style: GoogleFonts.kanit(fontSize: 20),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const SelectedCustomer()),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget _buttonDelete() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.end,
//     children: [
//       const Icon(
//         Icons.delete,
//         size: 15,
//       ),
//       Text(
//         "ลบ",
//         style: GoogleFonts.kanit(
//           fontSize: 15,
//         ),
//       ),
//     ],
//   );
// }

// Widget _image() {
//   return Image.asset(
//     "assets/images/img_1.png",
//     width: 150,
//     height: 150,
//     fit: BoxFit.cover,
//   );
// }

// Widget _productName() {
//   return Text(
//     "ชื่อสินค้า",
//     style: GoogleFonts.kanit(fontSize: 15),
//   );
// }

// Widget _productSum() {
//   return Text(
//     "จำนวน ชิ้น",
//     style: GoogleFonts.kanit(fontSize: 15),
//   );
// }

// Widget _productPrice() {
//   return Text(
//     "ราคา ต่อชิ้น",
//     style: GoogleFonts.kanit(fontSize: 15),
//   );
// }

// Widget _totalPrice() {
//   return Align(
//     alignment: Alignment.bottomRight,
//     child: Text(
//       "ราคารวม ฿",
//       style: GoogleFonts.kanit(fontSize: 15),
//     ),
//   );
// }
