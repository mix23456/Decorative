import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_curtain/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 1000.0),
                ],
              )),
        ))
    .toList();
int _current = 0;

final CarouselController _controller = CarouselController();
final LatLng _kMapCenter = const LatLng(19.018255973653343, 72.84793849278007);

final CameraPosition _kInitialPosition =
    CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // width: 450,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                children: [
                  CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          onPressed: previous,
                          icon: const Icon(Icons.arrow_back_ios_new),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          onPressed: next,
                          icon: const Icon(Icons.arrow_forward_ios_outlined),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: defaultPadding / 2),
            Container(width: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
              child: Text(
                "REVIEW",
                style: GoogleFonts.kanit(fontSize: 32),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 5, vertical: defaultPadding * 2),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: () {},
                          child: GridTile(
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                            footer: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.black.withOpacity(.5),
                              child: Text(
                                'ผลงานผ้าม่าน',
                                style: GoogleFonts.kanit(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding / 2),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: () {},
                          child: GridTile(
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                            footer: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.black.withOpacity(.5),
                              child: Text(
                                'ผลงานมู่ลี่ไม้',
                                style: GoogleFonts.kanit(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding * 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: () {},
                          child: GridTile(
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                            footer: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.black.withOpacity(.5),
                              child: Text(
                                'ผ้าโปร่งแสง',
                                style: GoogleFonts.kanit(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: () {},
                          child: GridTile(
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                            footer: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.black.withOpacity(.5),
                              child: Text(
                                'ม่านจีบ',
                                style: GoogleFonts.kanit(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: () {},
                          child: GridTile(
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                            footer: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.black.withOpacity(.5),
                              child: Text(
                                'ม่านสองชั้น',
                                style: GoogleFonts.kanit(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: () {},
                          child: GridTile(
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                            footer: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.black.withOpacity(.5),
                              child: Text(
                                'มู่ลี่',
                                style: GoogleFonts.kanit(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: defaultPadding / 2, right: defaultPadding * 5),
              alignment: Alignment.centerRight,
              child: Text(
                'All Item',
                style: GoogleFonts.kanit(
                    fontSize: bodytext,
                    color: colortext2,
                    decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
              child:
                  Text('PERFORMANCE', style: GoogleFonts.kanit(fontSize: 32)),
            ),
            const SizedBox(height: defaultPadding / 2),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: defaultPadding * 5),
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              decoration: BoxDecoration(
                  border: Border.all(color: colortext2),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'ชื่อผลงาน',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colortext1),
                        ),
                        TextSpan(
                          text: 'ผ้าม่านสุดเกร์',
                          style: GoogleFonts.kanit(
                            color: colortext2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'ที่อยู่งาน',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext, color: colortext1),
                        ),
                        TextSpan(
                          text:
                              '188/5-6 ถ.ทุ่งโอเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                          style: GoogleFonts.kanit(
                            color: colortext2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 200,
                          height: 200,
                          color: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        child: Container(
                          width: 200,
                          height: 200,
                          color: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Expanded(
                        child: Container(
                          width: 200,
                          height: 200,
                          color: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
              child: Text('PAYMENT', style: GoogleFonts.kanit(fontSize: 32)),
            ),
            const SizedBox(height: defaultPadding / 2),
            Container(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              color: Colors.grey[200],
              height: 430,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 296,
                        height: 396,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorWhite,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 64,
                                  height: 72,
                                  child: Image.asset('assets/logos/kbank.png'),
                                ),
                                const SizedBox(width: defaultPadding),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'บัญชี : 254-2-63689-0',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext1),
                                    ),
                                    Text(
                                      'ธนาคารกสิกรไทย',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext1),
                                    ),
                                    Text(
                                      'สาขาช้างคลาน',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              height: 20,
                              indent: 20,
                              endIndent: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'PromptPay',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                                const SizedBox(height: defaultPadding),
                                Container(
                                  width: 100,
                                  height: 100,
                                  color: colorContainer,
                                ),
                                const SizedBox(height: defaultPadding),
                                Text(
                                  'แสกน QR เพื่อโอนเข้าบัญชี',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                                const SizedBox(height: defaultPadding),
                                Text(
                                  'ชื่อ :',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                                const SizedBox(height: defaultPadding),
                                Text(
                                  'เลขอ้างอิง :',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext2),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 296,
                        height: 396,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorWhite,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 64,
                                  height: 72,
                                  child:
                                      Image.asset('assets/logos/krungthai.png'),
                                ),
                                const SizedBox(width: defaultPadding),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'บัญชี : 254-2-63689-0',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext1),
                                    ),
                                    Text(
                                      'ธนาคารกรุงไทย',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext1),
                                    ),
                                    Text(
                                      'สาขาช้างคลาน',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              height: 20,
                              indent: 20,
                              endIndent: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'PromptPay',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                                const SizedBox(height: defaultPadding),
                                Container(
                                  width: 100,
                                  height: 100,
                                  color: colorContainer,
                                ),
                                const SizedBox(height: defaultPadding),
                                Text(
                                  'แสกน QR เพื่อโอนเข้าบัญชี',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                                const SizedBox(height: defaultPadding),
                                Text(
                                  'ชื่อ :',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                                const SizedBox(height: defaultPadding),
                                Text(
                                  'เลขอ้างอิง :',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext2),
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
            ),
            const SizedBox(height: defaultPadding / 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
              child: Text('CONTACK US', style: GoogleFonts.kanit(fontSize: 32)),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  vertical: defaultPadding, horizontal: defaultPadding * 5),
              color: Colors.grey[200],
              child: Column(
                children: [
                  Table(
                    children: [
                      TableRow(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: colortext1),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(defaultPadding),
                                height: 50,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'บริษัท DK decorative',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colorWhite),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(defaultPadding),
                                alignment: Alignment.centerRight,
                                child: const Icon(
                                  Icons.ios_share,
                                  color: colorWhite,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TableRow(
                        decoration: const BoxDecoration(color: colorWhite),
                        children: [
                          Container(
                            padding: const EdgeInsets.all(defaultPadding / 2),
                            height: 50,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.email,
                                  color: colortext1,
                                ),
                                const SizedBox(width: defaultPadding),
                                Text(
                                  'dkdecorative@gmail.com',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        decoration: const BoxDecoration(color: colorWhite),
                        children: [
                          Container(
                            padding: const EdgeInsets.all(defaultPadding / 2),
                            height: 50,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: colortext1,
                                ),
                                const SizedBox(width: defaultPadding),
                                Text(
                                  '052 002620',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        decoration: const BoxDecoration(color: colorWhite),
                        children: [
                          Container(
                            padding: const EdgeInsets.all(defaultPadding / 2),
                            height: 50,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.phone_iphone,
                                  color: colortext1,
                                ),
                                const SizedBox(width: defaultPadding),
                                Text(
                                  '0818846190',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: colorWhite),
                        children: [
                          Container(
                            padding: const EdgeInsets.all(defaultPadding / 2),
                            height: 50,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: colortext1,
                                ),
                                const SizedBox(width: defaultPadding),
                                Text(
                                  '188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Tab(
                            icon: Image.asset('assets/logos/facebook_logo.png'),
                            height: 24,
                          ),
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
                          Tab(
                            icon:
                                Image.asset('assets/logos/instagram_logo.png'),
                            height: 24,
                          ),
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
                          Tab(
                            icon: Image.asset('assets/logos/line_logo.png'),
                            height: 24,
                          ),
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
                          Tab(
                            icon: Image.asset('assets/logos/twitter_logo.png'),
                            height: 24,
                          ),
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
                  const SizedBox(height: defaultPadding * 2),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 300,
                    child: GoogleMap(
                      initialCameraPosition: _kInitialPosition,
                      myLocationEnabled: true,
                      // myLocationButtonEnabled: true,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
          ],
        ),
      ),
    );
  }

  void next() =>
      _controller.nextPage(duration: const Duration(milliseconds: 500));
  void previous() =>
      _controller.previousPage(duration: const Duration(milliseconds: 500));
}
