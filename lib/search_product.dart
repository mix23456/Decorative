import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/constants/product_card.dart';
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
              SizedBox(height: defaultPadding),
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
              const SizedBox(height: defaultPadding / 2),
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
              const SizedBox(height: defaultPadding / 2),
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
            ],
          ),
        ),
      ),
    );
  }
}
