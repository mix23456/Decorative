import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart' as latlng;
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/constants/fluttermap.dart';

class Contack extends StatefulWidget {
  const Contack({Key? key}) : super(key: key);

  @override
  _ContackState createState() => _ContackState();
}

class _ContackState extends State<Contack> {
  // static const _initialCameraPosition = CameraPosition(
  //   target: LatLng(37.77972, -122.431297),
  //   zoom: 11.5,
  // );
  // late GoogleMapController _googleMapController;
  @override
  void dispose() {
    // _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.grey[300],
        leading: Image.asset('assets/logos/logo.png'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'ช่องทางการติดต่อทำไม',
              style: GoogleFonts.kanit(color: Colors.grey, fontSize: bodytext),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 3),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new)),
                  Text(
                    'ช่องทางการติดต่อ',
                    style: GoogleFonts.kanit(
                      fontSize: subtitle,
                    ),
                  ),
                  Container(),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: defaultPadding * 2),
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.width * 0.35,
                    child: Image.asset('assets/images/curtain.png'),
                  ),
                  const SizedBox(width: defaultPadding * 2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding / 2),
                          child: Text(
                            'บริษัท DK decorative',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext1),
                          ),
                        ),
                        const SizedBox(height: defaultPadding * 2),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding / 2),
                          child: Text(
                            'เลขกำกับภาษี 0629249453',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext1),
                          ),
                        ),
                        const SizedBox(height: defaultPadding * 2),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding / 2),
                          child: Text(
                            'ที่อยู่ : 188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext1),
                          ),
                        ),
                        const SizedBox(height: defaultPadding * 2),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding / 2),
                          child: Text(
                            'เบอร์ติดต่อ : 052 002620 , 0818846190',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
              Container(
                padding: const EdgeInsets.all(defaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Tab(
                            icon: Image.asset('assets/logos/facebook_logo.png'),
                            height: 24,
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          Text(
                            'DK decorative',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: Row(
                        children: [
                          Tab(
                            icon:
                                Image.asset('assets/logos/instagram_logo.png'),
                            height: 24,
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          Text(
                            'DK decorative',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: Row(
                        children: [
                          Tab(
                            icon: Image.asset('assets/logos/line_logo.png'),
                            height: 24,
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          Text(
                            'DK decorative',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: Row(
                        children: [
                          Tab(
                            icon: Image.asset('assets/logos/twitter_logo.png'),
                            height: 24,
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          Text(
                            'DK decorative',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              fluttermap(),
              // SizedBox(
              //   height: 500,
              //   width: double.infinity,
              //   child: GoogleMap(
              //     myLocationEnabled: true,
              //     myLocationButtonEnabled: true,
              //     zoomControlsEnabled: true,
              //     initialCameraPosition: _initialCameraPosition,
              //     onMapCreated: (controller) =>
              //         _googleMapController = controller,
              //   ),
              // ),
              SizedBox(
                height: defaultPadding,
              ),
              // Container(
              //   width: 183,
              //   height: 56,
              //   padding: const EdgeInsets.symmetric(
              //       horizontal: defaultPadding + 3, vertical: defaultPadding),
              //   decoration: BoxDecoration(
              //       color: colorBlue, borderRadius: BorderRadius.circular(5)),
              //   child: Row(
              //     children: [
              //       Text(
              //         'ดูบน Google Map',
              //         style: GoogleFonts.kanit(
              //             fontSize: bodytext, color: colorWhite),
              //       ),
              //       const Icon(
              //         Icons.location_on,
              //         color: colorWhite,
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
