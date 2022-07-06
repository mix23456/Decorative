import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';

class Socialmediaicon extends StatelessWidget {
  const Socialmediaicon({Key? key, required this.image, required this.title})
      : super(key: key);

  final String? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Tab(
          icon: Image.asset('$image'), //assets/logos/facebook_logo.png
          height: MediaQuery.of(context).size.height / 50,
        ),
        const SizedBox(width: defaultPadding / 2),
        Text(
          '$title', //DK decorative
          style: GoogleFonts.kanit(fontSize: bodytext, color: colortext2),
        ),
      ],
    );
  }
}
