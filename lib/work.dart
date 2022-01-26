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
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: Container(
        height: 555,
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding * 2, vertical: defaultPadding),
        margin: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFEDEDED)),
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
                  child: IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 28, horizontal: defaultPadding),
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                child: Column(
                                  children: [
                                    Text('ยืนยันจะลบข้อมูลผลงานนี้',
                                        style: GoogleFonts.kanit(
                                            fontSize: bodytext)),
                                    const SizedBox(height: defaultPadding),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 150,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(28),
                                              ),
                                              primary: const Color(0xFFD4D4D4),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'ยกเลิก',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 150,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(28),
                                              ),
                                              primary: colortext1,
                                            ),
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return Dialog(
                                                      child: Container(
                                                          alignment: Alignment
                                                              .center,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.25,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.1,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          child: Text(
                                                            'ลบข้อมูลผลงานสำเร็จ',
                                                            style: GoogleFonts
                                                                .kanit(
                                                                    fontSize:
                                                                        bodytext),
                                                          )),
                                                    );
                                                  });
                                            },
                                            child: Text(
                                              'ยืนยัน',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colorWhite),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: colorWhite,
                    ),
                  ),
                )
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
                const SizedBox(width: defaultPadding),
                const SizedBox(width: 50),
              ],
            ),
            const SizedBox(height: defaultPadding * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 181,
                      height: 214,
                      color: colorContiner,
                    ),
                    const SizedBox(height: defaultPadding),
                    Container(
                      width: 40,
                      height: 40,
                      color: colortext1,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete_outline,
                          color: colorWhite,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: defaultPadding),
                Column(
                  children: [
                    Container(
                      width: 181,
                      height: 214,
                      color: colorContiner,
                    ),
                    const SizedBox(height: defaultPadding),
                    Container(
                      width: 40,
                      height: 40,
                      color: colortext1,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete_outline,
                          color: colorWhite,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(width: defaultPadding),
                Column(
                  children: [
                    DottedBorder(
                      padding: EdgeInsets.zero,
                      child: Container(
                        width: 181,
                        height: 214,
                        color: colorContiner,
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    const SizedBox(width: 40, height: 40),
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
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'บันทึกข้อมูลสำเร็จ',
                                  style: GoogleFonts.kanit(fontSize: bodytext),
                                )),
                          );
                        });
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
