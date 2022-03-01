// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_curtain/constants/product_card.dart';
// import 'package:project_curtain/details_product.dart';
// import 'package:project_curtain/constants/constants.dart';

// class SearchResultCurtain extends StatefulWidget {
//   const SearchResultCurtain({Key? key}) : super(key: key);

//   @override
//   _SearchResultCurtainState createState() => _SearchResultCurtainState();
// }

// class _SearchResultCurtainState extends State<SearchResultCurtain> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back_ios_new,
//             color: colorBlack,
//           ),
//         ),
//         title: Text(
//           'ผลการค้นหาสินค้า',
//           style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(
//             horizontal: defaultPadding * 3, vertical: defaultPadding),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: ProductCard(
//                     nameProduct: 'รางยูโก้ประกอบ มือปิด',
//                     ontap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const DetailScreen()));
//                     },
//                     image: Image.asset(
//                       'assets/images/curtain2.png',
//                       fit: BoxFit.cover,
//                     ),
//                     price: 400,
//                   ),
//                 ),
//                 const SizedBox(width: defaultPadding),
//                 Expanded(
//                   child: ProductCard(
//                     nameProduct: 'รางยูโก้ประกอบ มือปิด',
//                     ontap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const DetailScreen()));
//                     },
//                     image: Image.asset(
//                       'assets/images/curtain3.png',
//                       fit: BoxFit.cover,
//                     ),
//                     price: 400,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: defaultPadding / 2),
//             Row(
//               children: [
//                 Expanded(
//                   child: ProductCard(
//                     nameProduct: 'รางยูโก้ประกอบ มือปิด',
//                     ontap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const DetailScreen()));
//                     },
//                     image: Image.asset(
//                       'assets/images/curtain2.png',
//                       fit: BoxFit.cover,
//                     ),
//                     price: 400,
//                   ),
//                 ),
//                 const SizedBox(width: defaultPadding),
//                 Expanded(
//                   child: ProductCard(
//                     nameProduct: 'รางยูโก้ประกอบ มือปิด',
//                     ontap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const DetailScreen()));
//                     },
//                     image: Image.asset(
//                       'assets/images/curtain3.png',
//                       fit: BoxFit.cover,
//                     ),
//                     price: 400,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: defaultPadding / 2),
//             Row(
//               children: [
//                 Expanded(
//                   child: ProductCard(
//                     nameProduct: 'รางยูโก้ประกอบ มือปิด',
//                     ontap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const DetailScreen()));
//                     },
//                     image: Image.asset(
//                       'assets/images/curtain2.png',
//                       fit: BoxFit.cover,
//                     ),
//                     price: 400,
//                   ),
//                 ),
//                 const SizedBox(width: defaultPadding),
//                 Expanded(
//                   child: ProductCard(
//                     nameProduct: 'รางยูโก้ประกอบ มือปิด',
//                     ontap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => const DetailScreen()));
//                     },
//                     image: Image.asset(
//                       'assets/images/curtain3.png',
//                       fit: BoxFit.cover,
//                     ),
//                     price: 400,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
