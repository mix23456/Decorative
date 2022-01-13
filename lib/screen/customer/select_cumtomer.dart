// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:project_curtain/screen/customer/map/map.dart';
// import 'package:project_curtain/screen/product/constants.dart';
// import 'package:searchfield/searchfield.dart';

// class SelectedCustomer extends StatefulWidget {
//   const SelectedCustomer({Key? key}) : super(key: key);

//   @override
//   _SelectedCustomerState createState() => _SelectedCustomerState();
// }

// class _SelectedCustomerState extends State<SelectedCustomer> {
//   String dropdownValue = '1';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'เลือกลูกค้า',
//           style: GoogleFonts.kanit(
//             fontSize: 25,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(defaultPadding / 2),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 height: MediaQuery.of(context).size.height * 0.7,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   // mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Text(
//                         "เลือกลูกค้า",
//                         style: GoogleFonts.kanit(fontSize: 20),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: defaultPadding),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(color: Colors.black),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: SearchField(
//                         hint: "search",
//                         searchInputDecoration: InputDecoration(
//                           enabledBorder: OutlineInputBorder(
//                             borderSide:
//                                 const BorderSide(color: Colors.blueGrey),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           focusedBorder: const OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.blueGrey,
//                             ),
//                           ),
//                         ),
//                         itemHeight: 50,
//                         maxSuggestionsInViewPort: 4,
//                         suggestions: const [
//                           'India',
//                           'USA',
//                           'Brazil',
//                           'Canada',
//                           'Australia',
//                           'Singapore'
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(defaultPadding / 4),
//                       height: 400,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           name(),
//                           const SizedBox(height: defaultPadding / 2),
//                           nickName(),
//                           const SizedBox(height: defaultPadding / 2),
//                           email(),
//                           const SizedBox(height: defaultPadding / 2),
//                           phoneNumber(),
//                           const SizedBox(height: defaultPadding / 2),
//                           location(),
//                           const SizedBox(height: defaultPadding / 2),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (ctx) => const Map()),
//                               );
//                             },
//                             child: Text(
//                               'ค้นหาตำแหน่งปัจจุบัน',
//                               style: GoogleFonts.kanit(),
//                             ),
//                           ),
//                           const SizedBox(height: defaultPadding / 2),
//                           // GoogleMap(
//                           //   onMapCreated: _onMapCreated,
//                           //   initialCameraPosition: const CameraPosition(
//                           //     target: _center,
//                           //     zoom: 15,
//                           //   ),
//                           //   mapType: _currentMapType,
//                           //   markers: _markers,
//                           //   onCameraMove: _onCameraMove,
//                           // ),
//                           // Padding(
//                           //   padding: const EdgeInsets.all(15),
//                           //   child: Align(
//                           //     alignment: Alignment.topRight,
//                           //     child: Column(
//                           //       children: [
//                           //         FloatingActionButton(
//                           //           onPressed: () => _onMapTypeButtonPressed,
//                           //           materialTapTargetSize:
//                           //               MaterialTapTargetSize.padded,
//                           //           backgroundColor: Colors.green,
//                           //           child: const Icon(Icons.map, size: 36),
//                           //         ),
//                           //         const SizedBox(
//                           //           height: 16,
//                           //         ),
//                           //       ],
//                           //     ),
//                           //   ),
//                           // ),
//                           SizedBox(
//                             width: double.infinity,
//                             child: ElevatedButton(
//                               onPressed: () {},
//                               child: Text(
//                                 'กดเพื่อดูใบเสนอราคา',
//                                 style: GoogleFonts.kanit(),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget name() {
//   return Text(
//     'ชื่อจริง :',
//     style: GoogleFonts.kanit(fontSize: 20),
//   );
// }

// Widget nickName() {
//   return Text(
//     'ชื่อเล่น :',
//     style: GoogleFonts.kanit(),
//   );
// }

// Widget email() {
//   return Text(
//     'อีเมล :',
//     style: GoogleFonts.kanit(),
//   );
// }

// Widget phoneNumber() {
//   return Text(
//     'เบอร์โทร :',
//     style: GoogleFonts.kanit(),
//   );
// }

// Widget location() {
//   return Text(
//     'ที่อยู่ :',
//     style: GoogleFonts.kanit(),
//   );
// }
