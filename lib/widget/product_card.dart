import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.nameProduct,
    required this.ontap,
    required this.image,
    required this.price,
  }) : super(key: key);
  final String nameProduct;
  final int price;
  final VoidCallback ontap;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: ontap,
          child: GridTile(
            child: image,
            footer: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.black.withOpacity(.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameProduct,
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: bodytext,
                    ),
                  ),
                  Text(
                    '฿ $price',
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: bodytext,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 34,
                          height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colortext1),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          width: 34,
                          height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colortext2),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          width: 34,
                          height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFE9E9E9)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
