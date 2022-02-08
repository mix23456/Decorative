import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants.dart';
import 'package:project_curtain/details_product.dart';
import 'package:project_curtain/search_product.dart';
import 'package:project_curtain/search_result_chick.dart';
import 'package:project_curtain/search_result_curtain.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool? curtain1 = false;
  bool? curtain2 = false;
  bool? curtain3 = false;
  bool? curtain4 = false;
  bool? curtain5 = false;
  bool? curtain6 = false;
  bool? curtain7 = false;
  bool? chick1 = false;
  bool? chick2 = false;
  bool? chick3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'PRODUCTS',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.search,
              color: colorBlack,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'ค้นหา',
                              hintStyle: GoogleFonts.kanit(color: colortext2)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchProduct()));
                        },
                        icon: const Icon(
                          Icons.search,
                          color: colorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 160,
                    height: 48,
                    color: colortext1,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SearchResultCurtain()));
                      },
                      child: Text(
                        'ผ้าม่าน (100)',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colorWhite),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 48,
                    color: colorBgBtn2,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SearchResultChick()));
                      },
                      child: Text(
                        'มู่ลี่ (100)',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
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
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
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
                padding: const EdgeInsets.all(defaultPadding),
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
            ],
          ),
        ),
      ),
    );
  }
}
