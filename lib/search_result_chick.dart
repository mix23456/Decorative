// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_curtain/details_product.dart';
// import 'package:project_curtain/constants/constants.dart';

// class SearchResultChick extends StatefulWidget {
//   const SearchResultChick({Key? key}) : super(key: key);

//   @override
//   _SearchResultChickState createState() => _SearchResultChickState();
// }

// class _SearchResultChickState extends State<SearchResultChick> {
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
//                   flex: 1,
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'มู่ลี่',
//                       hintStyle: GoogleFonts.kanit(
//                           color: Colors.grey, fontSize: bodytext),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: defaultPadding),
//                 const Icon(Icons.search, color: colorBlack),
//                 const Expanded(child: SizedBox())
//               ],
//             ),
//             const SizedBox(height: defaultPadding / 2),
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.25,
//                     color: Colors.transparent,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: InkWell(
//                         onTap: () {
//                           // Navigator.of(context).push(MaterialPageRoute(
//                           //   builder: (context) => const DetailScreen(),
//                           // ));
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const DetailScreen(),
//                               ));
//                         },
//                         child: GridTile(
//                           child: Image.network(
//                             'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                           footer: Container(
//                             padding: const EdgeInsets.all(8),
//                             color: Colors.black.withOpacity(.5),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'รางยูโก้ประกอบ มือปีด',
//                                   style: GoogleFonts.kanit(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                                 Text(
//                                   '฿ 400',
//                                   style: GoogleFonts.kanit(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: defaultPadding / 2),
//                 Expanded(
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.25,
//                     color: Colors.transparent,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: InkWell(
//                         onTap: () {},
//                         child: GridTile(
//                           child: Image.network(
//                             'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                           footer: Container(
//                             padding: const EdgeInsets.all(8),
//                             color: Colors.black.withOpacity(.5),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'รางยูโก้ประกอบ มือปีด',
//                                   style: GoogleFonts.kanit(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                                 Text(
//                                   '฿ 400',
//                                   style: GoogleFonts.kanit(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: defaultPadding / 2),
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.25,
//                     color: Colors.transparent,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: InkWell(
//                         onTap: () {
//                           // Navigator.of(context).push(MaterialPageRoute(
//                           //   builder: (context) => const DetailScreen(),
//                           // ));
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const DetailScreen(),
//                               ));
//                         },
//                         child: GridTile(
//                           child: Image.network(
//                             'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                           footer: Container(
//                             padding: const EdgeInsets.all(8),
//                             color: Colors.black.withOpacity(.5),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'รางยูโก้ประกอบ มือปีด',
//                                   style: GoogleFonts.kanit(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                                 Text(
//                                   '฿ 400',
//                                   style: GoogleFonts.kanit(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: defaultPadding / 2),
//                 Expanded(
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.25,
//                     color: Colors.transparent,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: InkWell(
//                         onTap: () {},
//                         child: GridTile(
//                           child: Image.network(
//                             'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                           footer: Container(
//                             padding: const EdgeInsets.all(8),
//                             color: Colors.black.withOpacity(.5),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'รางยูโก้ประกอบ มือปีด',
//                                   style: GoogleFonts.kanit(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                                 Text(
//                                   '฿ 400',
//                                   style: GoogleFonts.kanit(
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
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
