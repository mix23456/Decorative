import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSearch extends StatelessWidget {
  const TitleSearch({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            'assets/images/caret-right.png',
            fit: BoxFit.contain,
            width: 20,
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: GoogleFonts.kanit(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
