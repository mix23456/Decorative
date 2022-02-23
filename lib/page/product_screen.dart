import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants.dart';
import 'package:project_curtain/details_product.dart';
import 'package:project_curtain/product_card.dart';
import 'package:project_curtain/search_product.dart';
import 'package:project_curtain/search_result_chick.dart';
import 'package:project_curtain/search_result_curtain.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 3),
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
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      nameProduct: 'รางยูโก้ประกอบ มือปิด',
                      ontap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DetailScreen()));
                      },
                      image: Image.network(
                        'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
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
                      image: Image.network(
                        'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
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
                      image: Image.network(
                        'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
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
                      image: Image.network(
                        'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
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
                      image: Image.network(
                        'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
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
                      image: Image.network(
                        'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
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
                      image: Image.network(
                        'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
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
                      image: Image.network(
                        'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                        fit: BoxFit.cover,
                      ),
                      price: 400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
