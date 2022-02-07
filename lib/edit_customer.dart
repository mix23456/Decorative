import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_curtain/constants.dart';

class EditCustomer extends StatefulWidget {
  const EditCustomer({Key? key}) : super(key: key);

  @override
  _EditCustomer createState() => _EditCustomer();
}

class _EditCustomer extends State<EditCustomer> {
  // Position userLocation;
  // Future<Position> _getLocation() async {
  //   try {
  //     userLocation = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.best);
  //   } catch (e) {
  //     userLocation = null!;
  //   }
  //   return userLocation;
  // }

  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.77972, -122.431297),
    zoom: 11.5,
  );
  late GoogleMapController _googleMapController;
  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  dynamic address = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
        title: Text(
          'แก้ไขข้อมูลลูกค้า',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding),
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding * 5, vertical: defaultPadding),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'ชื่อ',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colorBlack),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: GoogleFonts.kanit(
                                        color: colorRed,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'ชื่อ',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorStyle:
                                    GoogleFonts.kanit(fontSize: bodytext),
                              ),
                              validator: (value) {
                                if (value!.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'โปรดกรอกชื่อ';
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'นามสกุล',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colorBlack),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: GoogleFonts.kanit(
                                        color: colorRed,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'นามสกุล',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorStyle:
                                    GoogleFonts.kanit(fontSize: bodytext),
                              ),
                              validator: (value) {
                                if (value!.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'โปรดกรอกนามสกุล';
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: Text(
                                'ชื่อเล่น :',
                                style: GoogleFonts.kanit(fontSize: bodytext),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'ชื่อเล่น',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'อีเมล',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colorBlack),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: GoogleFonts.kanit(
                                        color: colorRed,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'อีเมล',
                                  hintStyle: GoogleFonts.kanit(
                                      color: Colors.grey, fontSize: bodytext),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorStyle:
                                      GoogleFonts.kanit(fontSize: bodytext),
                                ),
                                validator: (value) {
                                  if (value!.isNotEmpty) {
                                    return null;
                                  } else {
                                    return 'โปรดกรอก อีเมล';
                                  }
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: Text(
                                'เลขที่ผู้เสียภาษี :',
                                style: GoogleFonts.kanit(fontSize: bodytext),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'เลขที่ผู้เสียภาษี',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: Text(
                                'บริษัท/สถานที่ทำงาน :',
                                style: GoogleFonts.kanit(fontSize: bodytext),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'บริษัท/สถานที่ทำงาน',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'เบอร์โทรศัพท์',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colorBlack),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: GoogleFonts.kanit(
                                        color: colorRed,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'เบอร์โทรศัพท์',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorStyle:
                                    GoogleFonts.kanit(fontSize: bodytext),
                              ),
                              validator: (value) {
                                if (value!.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'โปรดกรอกเบอร์โทรศัพท์';
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'ที่อยู่รับใบเสร็จ',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colorBlack),
                              ),
                              TextSpan(
                                text: '*',
                                style: GoogleFonts.kanit(
                                  color: colorRed,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: defaultPadding),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'ที่อยู่',
                          hintStyle: GoogleFonts.kanit(
                              color: Colors.grey, fontSize: bodytext),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                        ),
                        validator: (value) {
                          if (value!.isNotEmpty) {
                            return null;
                          } else {
                            return 'โปรดกรอกที่อยู่รับใบเสร็จ';
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: Text(
                                'ตำบล :',
                                style: GoogleFonts.kanit(fontSize: bodytext),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'ตำบล',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: Text(
                                'อำเภอ :',
                                style: GoogleFonts.kanit(fontSize: bodytext),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'อำเภอ',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'จังหวัด',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colorBlack),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: GoogleFonts.kanit(
                                        color: colorRed,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'จังหวัด',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorStyle:
                                    GoogleFonts.kanit(fontSize: bodytext),
                              ),
                              validator: (value) {
                                if (value!.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'โปรดกรอกจังหวัด';
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'รหัสไปรษณีย์',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colorBlack),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: GoogleFonts.kanit(
                                        color: colorRed,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'รหัสไปรษณีย์',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorStyle:
                                    GoogleFonts.kanit(fontSize: bodytext),
                              ),
                              validator: (value) {
                                if (value!.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'โปรดกรอกรหัสไปรษณีย์';
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: Text(
                          'สถานที่ติดตั้งงาน',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colorBlack),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: Text(
                                'ชื่อ-นามสกุลผู้ประสานงาน',
                                style: GoogleFonts.kanit(fontSize: bodytext),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'ชื่อ',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: defaultPadding),
                              child: Text(
                                'เบอร์โทรศัพท์',
                                style: GoogleFonts.kanit(fontSize: bodytext),
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'เบอร์โทรศัพท์',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      Radio(
                        activeColor: colortext1,
                        value: 1,
                        groupValue: address,
                        onChanged: (value) {
                          setState(() {
                            address = value;
                          });
                        },
                      ),
                      Text(
                        'เหมือนที่อยู่รับใบเสร็จ',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'ที่อยู่',
                      hintStyle: GoogleFonts.kanit(
                          color: Colors.grey, fontSize: bodytext),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                    ),
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        return null;
                      } else {
                        return 'โปรดกรอกที่อยู่รับใบเสร็จ';
                      }
                    },
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ตำบล :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'ตำบล',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'อำเภอ :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'อำเภอ',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'จังหวัด',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: colorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'จังหวัด',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorStyle:
                                    GoogleFonts.kanit(fontSize: bodytext),
                              ),
                              // validator: (value) {
                              //   if (value!.isNotEmpty) {
                              //     return null;
                              //   } else {
                              //     return '';
                              //   }
                              // },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'รหัสไปรษณีย์',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: colorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'รหัสไปรษณีย์',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding, vertical: defaultPadding),
                    child: Row(
                      children: [
                        Text(
                          'แผนที่สถานที่ติดตั้งงาน',
                          style: GoogleFonts.kanit(fontSize: bodytext),
                        ),
                        const Icon(Icons.location_on_rounded),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  // GoogleMap(initialCameraPosition: ),
                  SizedBox(
                    height: 200,
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
                  const SizedBox(height: defaultPadding * 2),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF707070),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        onPressed: () {
                          // showSaveComplete();
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                        },
                        icon: const Icon(Icons.save),
                        label: Text(
                          'บันทึก',
                          style: GoogleFonts.kanit(fontSize: bodytext),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showSaveComplete() {
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
                  'บันทึกข้อมูลสำเร็จ',
                  style: GoogleFonts.kanit(fontSize: bodytext),
                )),
          );
        });
  }
}
