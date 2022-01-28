import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_curtain/screen/constants/constants.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'EDIT CUSTOMER',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'เพิ่มรายชื่อลูกค้า',
                  style: GoogleFonts.kanit(fontSize: subtitle),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
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
                                    text: 'ชื่อ',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: const Color(0xFFFF0000),
                                    ),
                                  ),
                                ],
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
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'นามสกุล',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: const Color(0xFFFF0000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'นามสกุล',
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
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ชื่อเล่น :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
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
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'อีเมล',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: const Color(0xFFFF0000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'อีเมล',
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
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'เลขที่ผู้เสียภาษี :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
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
                            Text(
                              'บริษัท/สถานที่ทำงาน :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
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
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
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
                                    text: 'เบอร์โทรศัพท์',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: const Color(0xFFFF0000),
                                    ),
                                  ),
                                ],
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
                      const SizedBox(width: defaultPadding),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
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
                                color: const Color(0xFFFF0000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: defaultPadding),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'ที่อยู่',
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
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
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
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
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
                                      color: const Color(0xFFFF0000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'จังหวัด',
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
                                      color: const Color(0xFFFF0000),
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
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'สถานที่ติดตั้งงาน',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colorBlack),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ชื่อ-นามสกุลผู้ประสานงาน',
                              style: GoogleFonts.kanit(fontSize: bodytext),
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
                            Text(
                              'เบอร์โทรศัพท์',
                              style: GoogleFonts.kanit(fontSize: bodytext),
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
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
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
                        'เหมือนที่อยู๋รับใบเสร็จ',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
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
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Row(
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
                                      color: const Color(0xFFFF0000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: defaultPadding),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'จังหวัด',
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
                                      color: const Color(0xFFFF0000),
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
                  height: 300,
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
                const SizedBox(height: defaultPadding),
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
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      'บันทึกข้อมูลสำเร็จ',
                                      style:
                                          GoogleFonts.kanit(fontSize: bodytext),
                                    )),
                              );
                            });
                      },
                      icon: const Icon(Icons.save),
                      label: Text(
                        'บันทึก',
                        style: GoogleFonts.kanit(fontSize: bodytext),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
