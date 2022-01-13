import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/constants/constants.dart';

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
                  // Positioned(
                  //   bottom: 0.0,
                  //   left: 0.0,
                  //   right: 0.0,
                  //   child: Container(
                  //       // decoration: const BoxDecoration(
                  //       //   gradient: LinearGradient(
                  //       //     colors: [
                  //       //       Color.fromARGB(200, 0, 0, 0),
                  //       //       Color.fromARGB(0, 0, 0, 0)
                  //       //     ],
                  //       //     begin: Alignment.bottomCenter,
                  //       //     end: Alignment.topCenter,
                  //       //   ),
                  //       // ),
                  //       // padding: const EdgeInsets.symmetric(
                  //       //     vertical: 10.0, horizontal: 20.0),
                  //       // child: Text(
                  //       //   'No. ${imgList.indexOf(item)} image',
                  //       //   style: const TextStyle(
                  //       //     color: Colors.white,
                  //       //     fontSize: 20.0,
                  //       //     fontWeight: FontWeight.bold,
                  //       //   ),
                  //       // ),
                  //       ),
                  // ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // width: 450,
              height: 200,
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: previous,
                      icon: const Icon(Icons.arrow_back),
                      // color: Colors.black,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: next,
                      icon: const Icon(Icons.arrow_forward),
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
            Text(
              'Review',
              style: GoogleFonts.kanit(fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
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
            Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
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
                  const SizedBox(width: defaultPadding / 2),
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
            const SizedBox(height: defaultPadding / 2),
            Text('PAYMENT', style: GoogleFonts.kanit(fontSize: 20)),
            const SizedBox(height: defaultPadding / 2),
            Container(
              color: Colors.grey[200],
              height: 400,
              width: double.infinity,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  Container(
                    padding: const EdgeInsets.only(left: 40),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          top: -5,
                          left: 55,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFF00ac40),
                            ),
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(16),
                              primary: Colors.grey[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              '035-8-097103-5',
                              style: GoogleFonts.kanit(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: -40,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 1,
                                ),
                              ],
                              color: Color(0xFF00ac40),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.10,
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: SizedBox(
                              width: 35,
                              height: 35,
                              child: Image.asset(
                                'assets/logos/kbank.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -5,
                          left: 60,
                          child: Container(
                            alignment: Alignment.center,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFF00ac40),
                            ),
                            child: Text(
                              'DK DEcorative',
                              style: GoogleFonts.kanit(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.only(left: 40),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          top: -5,
                          left: 55,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFF00ac40),
                            ),
                            width: 20,
                            height: 20,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 300,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.5),
                                blurRadius: 1,
                              )
                            ],
                          ),
                          child: Text(
                            '035-8-097103-5',
                            style: GoogleFonts.kanit(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: -40,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 1,
                                ),
                              ],
                              color: Color(0xFF00ac40),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            height: MediaQuery.of(context).size.height * 0.10,
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: SizedBox(
                              width: 35,
                              height: 35,
                              child: Image.asset(
                                'assets/logos/kbank.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -5,
                          left: 60,
                          child: Container(
                            alignment: Alignment.center,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFF00ac40),
                            ),
                            child: Text(
                              'DK DEcorative',
                              style: GoogleFonts.kanit(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 200,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/logos/kbank.png'),
                      // ),
                    ),
                    child: Text('QR CODE'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              'CONTACK US',
              style: GoogleFonts.kanit(fontSize: 20),
            ),
            Container(
              color: Colors.grey[200],
              height: 200,
            ),
            const SizedBox(height: defaultPadding / 2)
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
