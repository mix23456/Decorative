import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/widget/contactuscard.dart';
import 'package:project_curtain/page/detail/details_product.dart';
import 'package:project_curtain/widget/fluttermap.dart';
import 'package:project_curtain/widget/paymentcard.dart';
import 'package:project_curtain/widget/performancecard.dart';
import 'package:project_curtain/widget/product_card.dart';
import 'package:project_curtain/page/product_screen.dart';
import 'package:project_curtain/widget/socialmediaicon.dart';

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

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
//---------------------------SLIDER IMGAE-------------------------
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
                        aspectRatio: 2,
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
//---------------------------REVIEW----------------------
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(children: [
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

//----------------------------PERFORMANCE ----------------------------------
                const SizedBox(height: defaultPadding / 2),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding * 2),
                  child: Text('PERFORMANCE',
                      style: GoogleFonts.kanit(fontSize: 32)),
                ),
                const SizedBox(height: defaultPadding / 2),
                const performancecard(
                  name: 'ผ้าม่านสุดเกร๋',
                  location:
                      '188/5-6 ถ.ทุ่งโอเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                  imageleft: 'assets/images/curtain.png',
                  imagemiddle: 'assets/images/curtain.png',
                  imageright: 'assets/images/curtain.png',
                ),
                const SizedBox(height: defaultPadding),

//------------------------------payment bar--------------------------
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding * 2),
                  child:
                      Text('PAYMENT', style: GoogleFonts.kanit(fontSize: 32)),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: defaultPadding,
                      horizontal: defaultPadding,
                    ),
                    color: Colors.grey[200],
                    width: double.infinity,
                    child: (MediaQuery.of(context).size.width > 600)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              //---------paymentcard widget---------
                              Expanded(
                                  child: paymentcard(
                                      accountnumber: '254-2-63689-0',
                                      bank: 'ธนาคารกสิกรไทย',
                                      banklocation: 'สาขาช้างคลาน',
                                      name: 'แพม เจริญมี',
                                      id: '004999038014808',
                                      image: 'assets/logos/kbank.png')),
                              SizedBox(width: defaultPadding),
                              Expanded(
                                  child: paymentcard(
                                      accountnumber: '254-2-63689-0',
                                      bank: 'ธนาคารกรุงไทย',
                                      banklocation: 'สาขาช้างคลาน',
                                      name: 'แพม เจริญมี',
                                      id: '004999038014808',
                                      image: 'assets/logos/krungthai.png')),
                            ],
                          )
                        // : Text('data')
                        : Column(
                            children: const [
                              //---------paymentcard widget---------
                              paymentcard(
                                  accountnumber: '254-2-63689-0',
                                  bank: 'ธนาคารกสิกรไทย',
                                  banklocation: 'สาขาช้างคลาน',
                                  name: 'แพม เจริญมี',
                                  id: '004999038014808',
                                  image: 'assets/logos/kbank.png'),
                              SizedBox(height: defaultPadding),
                              paymentcard(
                                  accountnumber: '254-2-63689-0',
                                  bank: 'ธนาคารกรุงไทย',
                                  banklocation: 'สาขาช้างคลาน',
                                  name: 'แพม เจริญมี',
                                  id: '004999038014808',
                                  image: 'assets/logos/krungthai.png'),
                            ],
                          )),

//-------------------------------CONTACT US-----------------------
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
                      vertical: defaultPadding, horizontal: defaultPadding),
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      const Contactuscard(
                        title: 'บริษัท DK decorative',
                        email: 'dkdecorative@gmail.com',
                        phonenumber: '052-002620',
                        smartphone: '081-8846190',
                        location:
                            '188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                      ),

                      const SizedBox(height: defaultPadding),
                      (MediaQuery.of(context).size.width > 600)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Socialmediaicon(
                                  image: 'assets/logos/facebook_logo.png',
                                  title: 'DK decorative',
                                ),
                                SizedBox(width: defaultPadding / 2),
                                Socialmediaicon(
                                  image: 'assets/logos/instagram_logo.png',
                                  title: 'DK decorative',
                                ),
                                SizedBox(width: defaultPadding / 2),
                                Socialmediaicon(
                                    image: 'assets/logos/twitter_logo.png',
                                    title: 'DK decorative'),
                                SizedBox(width: defaultPadding / 2),
                                Socialmediaicon(
                                    image: 'assets/logos/line_logo.png',
                                    title: 'DK decorative')
                              ],
                            )
                          : Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Socialmediaicon(
                                      image: 'assets/logos/facebook_logo.png',
                                      title: 'DK decorative',
                                    ),
                                    VerticalDivider(
                                      width: 4,
                                      thickness: 2,
                                      color: Colors.black,
                                    ),
                                    Socialmediaicon(
                                      image: 'assets/logos/instagram_logo.png',
                                      title: 'DK decorative',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: defaultPadding),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Socialmediaicon(
                                        image: 'assets/logos/twitter_logo.png',
                                        title: 'DK decorative'),
                                    VerticalDivider(
                                      width: 4,
                                      thickness: 2,
                                      color: Colors.black,
                                    ),
                                    Socialmediaicon(
                                        image: 'assets/logos/line_logo.png',
                                        title: 'DK decorative')
                                  ],
                                ),
                              ],
                            ),
                      const SizedBox(height: defaultPadding),

//--------------------------------Map-----------------------------------
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: const fluttermap()),
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
