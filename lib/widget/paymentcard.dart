import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';

class paymentcard extends StatelessWidget {
  const paymentcard(
      {Key? key,
      this.accountnumber,
      this.bank,
      this.banklocation,
      this.name,
      this.id,
      required this.image})
      : super(key: key);

  final String? accountnumber;
  final String? bank;
  final String? banklocation;
  final String? name;
  final String? id;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorWhite,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(defaultPadding),
                width: 70,
                height: 70,
                child: Image.asset(
                  '$image',
                ),
              ),
              const SizedBox(width: defaultPadding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'บัญชี : ${accountnumber ?? 'untitle'}',
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext1),
                  ),
                  Text(
                    bank ?? 'untitle',
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext1),
                  ),
                  Text(
                    banklocation ?? 'untitle',
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext1),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          Column(
            children: [
              Text(
                'PromptPay',
                style: GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
              ),
              const SizedBox(height: defaultPadding),
              Container(
                width: 100,
                height: 100,
                color: colorContainer,
              ),
              const SizedBox(height: defaultPadding),
              Text(
                'สแกน QR เพื่อโอนเข้าบัญชี',
                style: GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
              ),
              const SizedBox(height: defaultPadding),
              Text(
                'ชื่อ : ${name ?? 'untitle'}',
                style: GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
              ),
              const SizedBox(height: defaultPadding),
              Text(
                'เลขอ้างอิง : ${id ?? 'xxxxxxxx'}',
                style: GoogleFonts.kanit(fontSize: bodytext, color: colortext2),
              ),
              const SizedBox(
                height: defaultPadding,
              )
            ],
          ),
        ],
      ),
    );
  }
}
