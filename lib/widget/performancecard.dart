import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';

class performancecard extends StatelessWidget {
  const performancecard(
      {Key? key,
      required this.name,
      required this.location,
      required this.imageleft,
      required this.imagemiddle,
      required this.imageright})
      : super(key: key);

  final String? name;
  final String? location;
  final String? imageleft;
  final String? imagemiddle;
  final String? imageright;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(color: colortext2.withOpacity(0.25)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'ชื่อผลงาน : ',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
                ),
                TextSpan(
                  text: '$name', //ผ้าม่านสุดเกร๋
                  style: GoogleFonts.kanit(
                    color: colortext2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'ที่อยู่งาน : ',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
                ),
                TextSpan(
                  text:
                      '$location', //188/5-6 ถ.ทุ่งโอเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000
                  style: GoogleFonts.kanit(
                    color: colortext2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  width: 181.33,
                  height: 214,
                  color: Colors.transparent,
                  child: ClipRRect(
                    child: Image.asset('$imageleft'),
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding),
              Expanded(
                child: Container(
                  width: 181.33,
                  height: 214,
                  color: Colors.transparent,
                  child: ClipRRect(
                    child: Image.asset('$imagemiddle'),
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding),
              Expanded(
                child: Container(
                  width: 181.33,
                  height: 214,
                  color: Colors.transparent,
                  child: ClipRRect(
                    child: Image.asset('$imageright'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
