import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/details_product.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  _SearchProductState createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  bool checkProd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: colorBlack,
          ),
        ),
        title: Text(
          'ผลการค้นหาสินค้า',
          style: GoogleFonts.kanit(fontSize: subtitle, color: colorBlack),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
              left: defaultPadding * 3,
              right: defaultPadding * 3,
              top: defaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  const Icon(Icons.search)
                ],
              ),
              const SizedBox(height: defaultPadding),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailScreen(),
                                  ));
                            },
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'รางยูโก้ประกอบ มือปีด',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                    Text(
                                      '฿ 400',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                  ],
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
                        height: MediaQuery.of(context).size.height * 0.25,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailScreen(),
                                  ));
                            },
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'รางยูโก้ประกอบ มือปีด',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                    Text(
                                      '฿ 400',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                  ],
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
              const SizedBox(height: defaultPadding),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailScreen(),
                                  ));
                            },
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ผ้าทึบหน้าแคบ',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                    Text(
                                      '฿ 400',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                  ],
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
                        height: MediaQuery.of(context).size.height * 0.25,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailScreen(),
                                  ));
                            },
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ผ้าทึบหน้าแคบ',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                    Text(
                                      '฿ 400',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                  ],
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
              const SizedBox(height: defaultPadding),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailScreen(),
                                  ));
                            },
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ผ้าทึบหน้าแคบ',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                    Text(
                                      '฿ 400',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                  ],
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
                        height: MediaQuery.of(context).size.height * 0.25,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailScreen(),
                                  ));
                            },
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ผ้าทึบหน้าแคบ',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                    Text(
                                      '฿ 400',
                                      style: GoogleFonts.kanit(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: bodytext,
                                      ),
                                    ),
                                  ],
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
            ],
          ),
        ),
      ),
    );
  }
}
