import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/constants/fluttermap.dart';
import 'package:project_curtain/constants/product_card.dart';
import 'package:project_curtain/details_product.dart';
import 'package:project_curtain/page/product_screen.dart';
import 'package:latlong2/latlong.dart' as latlng;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final List<String> imgList = [
  'assets/images/curtain2.png',
  'assets/images/curtain3.png',
  'assets/images/curtain4.png',
  'assets/images/curtain5.png',
  'assets/images/curtain6.png',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                ],
              )),
        ))
    .toList();
int _current = 0;

final CarouselController _controller = CarouselController();
// const LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);

// const CameraPosition _kInitialPosition =
//     CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 3,
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
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
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
            Column(
              children: [
                const SizedBox(height: defaultPadding / 2),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding * 2),
                  child: Text(
                    "REVIEW",
                    style: GoogleFonts.kanit(fontSize: 32),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 5),
                  child: Column(children: [
                    Row(
                      children: [
                        Expanded(
                            child: ProductCard(
                          nameProduct: 'ลองดูสักอันจะเป็นไร',
                          ontap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DetailScreen()));
                          },
                          image: Image.asset('assets/logos/app_logo.png'),
                          price: 99999,
                        )),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Expanded(
                          child: ProductCard(
                            nameProduct: 'รางยูโก้ประกอบ มือปิด',
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DetailScreen()));
                            },
                            image: Image.asset(
                              'assets/images/curtain4.png',
                              fit: BoxFit.cover,
                            ),
                            price: 400,
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          child: ProductCard(
                            nameProduct: 'รางยูโก้ประกอบ มือปิด',
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DetailScreen()));
                            },
                            image: Image.asset(
                              'assets/images/curtain5.png',
                              fit: BoxFit.cover,
                            ),
                            price: 400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            nameProduct: 'รางยูโก้ประกอบ มือปิด',
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DetailScreen()));
                            },
                            image: Image.asset(
                              'assets/images/curtain6.png',
                              fit: BoxFit.cover,
                            ),
                            price: 400,
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          child: ProductCard(
                            nameProduct: 'รางยูโก้ประกอบ มือปิด',
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DetailScreen()));
                            },
                            image: Image.asset(
                              'assets/images/curtain7.png',
                              fit: BoxFit.cover,
                            ),
                            price: 400,
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          child: ProductCard(
                            nameProduct: 'รางยูโก้ประกอบ มือปิด',
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DetailScreen()));
                            },
                            image: Image.asset(
                              'assets/images/curtain8.png',
                              fit: BoxFit.cover,
                            ),
                            price: 400,
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          child: ProductCard(
                            nameProduct: 'รางยูโก้ประกอบ มือปิด',
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const DetailScreen()));
                            },
                            image: Image.asset(
                              'assets/images/curtain9.png',
                              fit: BoxFit.cover,
                            ),
                            price: 400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: defaultPadding / 2),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductScreen()));
                        },
                        child: Text(
                          'All Item',
                          style: GoogleFonts.kanit(
                              fontSize: bodytext,
                              color: colortext2,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(height: defaultPadding / 2),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding * 2),
                  child: Text('PERFORMANCE',
                      style: GoogleFonts.kanit(fontSize: 32)),
                ),
                const SizedBox(height: defaultPadding / 2),
                Container(
                  padding: const EdgeInsets.all(defaultPadding),
                  margin: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 5, vertical: defaultPadding),
                  decoration: BoxDecoration(
                      border: Border.all(color: colortext2.withOpacity(0.25)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ชื่อผลงาน : ',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colortext1),
                            ),
                            TextSpan(
                              text: 'ผ้าม่านสุดเกร๋',
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
                              text: 'ที่อยู่งาน : ',
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 181.33,
                            height: 214,
                            color: Colors.transparent,
                            child: ClipRRect(
                              child: Image.asset('assets/images/curtain.png'),
                            ),
                          ),
                          const SizedBox(width: defaultPadding),
                          Container(
                            width: 181.33,
                            height: 214,
                            color: Colors.transparent,
                            child: ClipRRect(
                              child: Image.asset('assets/images/curtain.png'),
                            ),
                          ),
                          const SizedBox(width: defaultPadding),
                          Container(
                            width: 181.33,
                            height: 214,
                            color: Colors.transparent,
                            child: ClipRRect(
                              child: Image.asset('assets/images/curtain.png'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding * 2),
                  child:
                      Text('PAYMENT', style: GoogleFonts.kanit(fontSize: 32)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding,
                    horizontal: defaultPadding * 5,
                  ),
                  color: Colors.grey[200],
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorWhite,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.all(defaultPadding),
                                    width: 70,
                                    height: 70,
                                    child: Image.asset(
                                      'assets/logos/kbank.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(width: defaultPadding),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    'สแกน QR เพื่อโอนเข้าบัญชี',
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
                                  const SizedBox(
                                    height: defaultPadding,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: defaultPadding / 2.5),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorWhite,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.all(defaultPadding),
                                    width: 70,
                                    height: 70,
                                    child: Image.asset(
                                      'assets/logos/krungthai.png',
                                    ),
                                  ),
                                  const SizedBox(width: defaultPadding),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    'สแกน QR เพื่อโอนเข้าบัญชี',
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
                                  const SizedBox(
                                    height: defaultPadding,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding * 2),
                  child: Text('CONTACT US',
                      style: GoogleFonts.kanit(fontSize: 32)),
                ),
                Container(
                  width: double.infinity,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.all(defaultPadding),
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'บริษัท DK decorative',
                                      style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colorWhite),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.all(defaultPadding),
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
                                padding:
                                    const EdgeInsets.all(defaultPadding / 2),
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
                                          fontSize: bodytext,
                                          color: colortext2),
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
                                padding:
                                    const EdgeInsets.all(defaultPadding / 2),
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
                                          fontSize: bodytext,
                                          color: colortext2),
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
                                padding:
                                    const EdgeInsets.all(defaultPadding / 2),
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
                                          fontSize: bodytext,
                                          color: colortext2),
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
                                padding:
                                    const EdgeInsets.all(defaultPadding / 2),
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
                                          fontSize: bodytext,
                                          color: colortext2),
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
                                icon: Image.asset(
                                    'assets/logos/facebook_logo.png'),
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                              const SizedBox(width: defaultPadding / 2),
                              Text(
                                'DK decorative',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext2),
                              ),
                            ],
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          Row(
                            children: [
                              Tab(
                                icon: Image.asset(
                                    'assets/logos/instagram_logo.png'),
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                              const SizedBox(width: defaultPadding / 2),
                              Text(
                                'DK decorative',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext2),
                              ),
                            ],
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          Row(
                            children: [
                              Tab(
                                icon: Image.asset('assets/logos/line_logo.png'),
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                              const SizedBox(width: defaultPadding / 2),
                              Text(
                                'DK decorative',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext2),
                              ),
                            ],
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          Row(
                            children: [
                              Tab(
                                icon: Image.asset(
                                    'assets/logos/twitter_logo.png'),
                                height: MediaQuery.of(context).size.height / 50,
                              ),
                              const SizedBox(width: defaultPadding / 2),
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
                      fluttermap(),
                      // Container(
                      //   height: 300,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: FlutterMap(
                      //     options: MapOptions(
                      //       enableScrollWheel: true,
                      //       center: latlng.LatLng(18.7960948, 99.0188304),
                      //       zoom: 16.0,
                      //     ),
                      //     layers: [
                      //       TileLayerOptions(
                      //           urlTemplate:
                      //               "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      //           subdomains: ['a', 'b', 'c']),
                      //       MarkerLayerOptions(
                      //         markers: [
                      //           Marker(
                      //             width: 80.0,
                      //             height: 80.0,
                      //             point: latlng.LatLng(18.7960948, 99.0188304),
                      //             builder: (ctx) => Container(
                      //               child: Icon(
                      //                 Icons.location_on,
                      //                 color: Colors.red,
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ],
                      //     nonRotatedChildren: [
                      //       AttributionWidget.defaultWidget(
                      //         source: 'OpenStreetMap contributors',
                      //         onSourceTapped: () {},
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
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
