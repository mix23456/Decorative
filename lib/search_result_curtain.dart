import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/details_product.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class SearchResultCurtain extends StatefulWidget {
  const SearchResultCurtain({Key? key}) : super(key: key);

  @override
  _SearchResultCurtainState createState() => _SearchResultCurtainState();
}

class _SearchResultCurtainState extends State<SearchResultCurtain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: colorBlack,
          ),
        ),
        title: Text(
          'ผลการค้นหาสินค้า',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding * 5, vertical: defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'ผ้าม่าน',
                      hintStyle: GoogleFonts.kanit(
                          color: Colors.grey, fontSize: bodytext),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: defaultPadding),
                const Icon(Icons.search, color: colorBlack),
                const Expanded(child: SizedBox())
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: defaultPadding / 2,
                  right: defaultPadding / 2,
                  top: defaultPadding / 2),
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
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const DetailScreen(),
                            // ));
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
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    '฿ 400',
                                    style: GoogleFonts.kanit(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
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
                  const SizedBox(width: defaultPadding / 2),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
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
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    '฿ 400',
                                    style: GoogleFonts.kanit(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
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
            Container(
              padding: const EdgeInsets.only(
                  left: defaultPadding / 2,
                  right: defaultPadding / 2,
                  top: defaultPadding / 2),
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
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const DetailScreen(),
                            // ));
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
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    '฿ 400',
                                    style: GoogleFonts.kanit(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
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
                  const SizedBox(width: defaultPadding / 2),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
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
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    '฿ 400',
                                    style: GoogleFonts.kanit(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
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
    );
  }
}
