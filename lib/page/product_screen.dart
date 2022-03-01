import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/details_product.dart';
import 'package:project_curtain/constants/product_card.dart';
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             const SearchResultCurtain()));
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             const SearchResultChick()));
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
                      image: Image.asset(
                        'assets/images/curtain2.png',
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
                        'assets/images/curtain3.png',
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
                      nameProduct: 'ผ้าทึบหน้าแคบ',
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
                      nameProduct: 'ผ้าทึบหน้าแคบ',
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
            ],
          ),
        ),
      ),
    );
  }
}
