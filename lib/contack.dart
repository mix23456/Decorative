import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class Contack extends StatefulWidget {
  const Contack({Key? key}) : super(key: key);

  @override
  _ContackState createState() => _ContackState();
}

class _ContackState extends State<Contack> {
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
              'ช่องทางการติดต่อ',
              style: GoogleFonts.kanit(color: Colors.grey, fontSize: bodytext),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 5),
        child: Column(
          children: [
            Text(
              'ช่องทางการติดต่อ',
              style: GoogleFonts.kanit(
                fontSize: subtitle,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 320,
                  height: 256,
                  color: colorContainer,
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding / 2),
                        child: Text(
                          'เลขกำกับภาษี 0629249453',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colortext1),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding / 2),
                        child: Text(
                          'ที่อยู่ : 188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colortext1),
                        ),
                      ),
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.facebook),
                      const SizedBox(width: defaultPadding),
                      Text(
                        'DK decorative',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.facebook),
                      const SizedBox(width: defaultPadding),
                      Text(
                        'DK decorative',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.facebook),
                      const SizedBox(width: defaultPadding),
                      Text(
                        'DK decorative',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.facebook),
                      const SizedBox(width: defaultPadding),
                      Text(
                        'DK decorative',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: GoogleMap(
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                zoomControlsEnabled: true,
                initialCameraPosition: _initialCameraPosition,
                onMapCreated: (controller) => _googleMapController = controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
