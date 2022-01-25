import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class ContactInformation extends StatefulWidget {
  const ContactInformation({Key? key}) : super(key: key);

  @override
  _ContactInformationState createState() => _ContactInformationState();
}

class _ContactInformationState extends State<ContactInformation> {
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
          'ข้อมูลการติดต่อ',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitel),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFEDEDED),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(defaultPadding),
            margin: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 250,
                    height: 250,
                    color: colorContiner,
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Text(
                  'บริษัท DK decorative',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'เลขกำกับภาษี',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'ที่อยู่',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'เบอร์โทรติดต่อ',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext2),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 16.0,
                      backgroundImage:
                          AssetImage('assets/logos/facebook_logo.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    const CircleAvatar(
                      radius: 16.0,
                      backgroundImage:
                          AssetImage('assets/logos/instagram_logo.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    const CircleAvatar(
                      radius: 16.0,
                      backgroundImage: AssetImage('assets/logos/line_logo.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    const CircleAvatar(
                      radius: 16.0,
                      backgroundImage:
                          AssetImage('assets/logos/twitter_logo.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
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
              ],
            ),
          ),
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
    );
  }
}
