import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
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
          'ผลงาน',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitel),
        ),
      ),
      body: Container(
        height: 555,
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding * 2, vertical: defaultPadding),
        margin: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFEDEDED)),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'ชื่อผลงาน :',
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext1),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Container(
                    color: colortext1,
                    child: const Icon(
                      Icons.remove,
                      color: colorWhite,
                    ))
              ],
            ),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'ที่อยู่งาน :',
                    style: GoogleFonts.kanit(
                        fontSize: bodytext, color: colortext1),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      color: colorContiner,
                    ),
                    const SizedBox(height: defaultPadding),
                    Container(
                      color: colorContiner,
                      child:
                          const Icon(Icons.delete_outline, color: colorWhite),
                    )
                  ],
                ),
                const SizedBox(width: defaultPadding),
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 250,
                      color: colorContiner,
                    ),
                    const SizedBox(height: defaultPadding),
                    Container(
                      color: colorContiner,
                      child:
                          const Icon(Icons.delete_outline, color: colorWhite),
                    )
                  ],
                ),
                const SizedBox(width: defaultPadding),
                Column(
                  children: [
                    DottedBorder(
                      padding: EdgeInsets.zero,
                      child: Container(
                        width: 200,
                        height: 250,
                        color: colorContiner,
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    Container(
                      color: colorContiner,
                      child:
                          const Icon(Icons.delete_outline, color: colorWhite),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                height: MediaQuery.of(context).size.height * 0.04,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF707070),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => Map(),
                    //     ));
                  },
                  icon: const Icon(Icons.save),
                  label: Text(
                    'บันทึก',
                    style: GoogleFonts.kanit(fontSize: bodytext),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
