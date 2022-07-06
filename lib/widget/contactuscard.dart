import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';

class Contactuscard extends StatelessWidget {
  const Contactuscard(
      {Key? key,
      this.email,
      this.phonenumber,
      this.smartphone,
      this.location,
      this.title})
      : super(key: key);

  final String? title;
  final String? email;
  final String? phonenumber;
  final String? smartphone;
  final String? location;

  @override
  Widget build(BuildContext context) {
    return Table(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(defaultPadding),
                  height: 50,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title ?? 'title', //บริษัท DK decorative
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colorWhite),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(defaultPadding),
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
              padding: const EdgeInsets.all(defaultPadding),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Icon(
                    Icons.email,
                    color: colortext1,
                  ),
                  const SizedBox(width: defaultPadding),
                  Text(
                    email ?? 'email', //dkdecorative@gmail.com
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext2),
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
              padding: const EdgeInsets.all(defaultPadding),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: colortext1,
                  ),
                  const SizedBox(width: defaultPadding),
                  Text(
                    phonenumber ?? '052-xxxxxx', //052 002620
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext2),
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
              padding: const EdgeInsets.all(defaultPadding),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Icon(
                    Icons.phone_iphone,
                    color: colortext1,
                  ),
                  const SizedBox(width: defaultPadding),
                  Text(
                    smartphone ?? '080-xxxxxxx', //0818846190
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext2),
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
              padding: const EdgeInsets.all(defaultPadding),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: colortext1,
                  ),
                  const SizedBox(width: defaultPadding),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      location ??
                          'location', //188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext2),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
