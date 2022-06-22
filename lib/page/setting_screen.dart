import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/add_bank.dart';
import 'package:project_curtain/add_user.dart';
import 'package:project_curtain/edit_bank.dart';
import 'package:project_curtain/edit_contact_information.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/login_screen.dart';
import 'package:project_curtain/work.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _expanded = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  bool _expanded4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        backgroundColor: colorWhite,
        centerTitle: true,
        title: Text(
          'SETTING',
          style: GoogleFonts.kanit(color: colortext1, fontSize: subtitle),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(children: [
            Container(
              color: colorWhite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExpansionPanelList(
                      elevation: 0,
                      children: [
                        ExpansionPanel(
                            backgroundColor: colorBorder,
                            headerBuilder: (context, isExpanded) {
                              return ListTile(
                                title: Text(
                                  'ข้อมูลการติดต่อ',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                              );
                            },
                            body: Container(
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(color: colorBorder),
                              ),
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding,
                                  vertical: defaultPadding / 2,
                                ),
                                child: Container(
                                  // padding: const EdgeInsets.symmetric(
                                  //     horizontal: defaultPadding * 5),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.25,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.25,
                                            child: Image.asset(
                                              'assets/images/curtain.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          const SizedBox(
                                              width: defaultPadding * 2),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical:
                                                          defaultPadding / 2),
                                                  child: Text(
                                                    'บริษัท DK decorative',
                                                    style: GoogleFonts.kanit(
                                                        fontSize: bodytext,
                                                        color: colortext1),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical:
                                                          defaultPadding / 2),
                                                  child: Text(
                                                    'เลขกำกับภาษี 0629249453',
                                                    style: GoogleFonts.kanit(
                                                        fontSize: bodytext,
                                                        color: colortext1),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical:
                                                          defaultPadding / 2),
                                                  child: Text(
                                                    'ที่อยู่ : 188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                                                    style: GoogleFonts.kanit(
                                                        fontSize: bodytext,
                                                        color: colortext1),
                                                  ),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical:
                                                          defaultPadding / 2),
                                                  child: Text(
                                                    'เบอร์ติดต่อ : 052 002620 , 0818846190',
                                                    style: GoogleFonts.kanit(
                                                        fontSize: bodytext,
                                                        color: colortext1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: defaultPadding),
                                      Container(
                                        padding: const EdgeInsets.all(
                                            defaultPadding),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              children: [
                                                Tab(
                                                  icon: Image.asset(
                                                      'assets/logos/facebook_logo.png'),
                                                  height: 24,
                                                ),
                                                const SizedBox(
                                                    width: defaultPadding / 2),
                                                Text(
                                                  'DK decorative',
                                                  style: GoogleFonts.kanit(
                                                      fontSize: bodytext,
                                                      color: colortext2),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Tab(
                                                  icon: Image.asset(
                                                      'assets/logos/instagram_logo.png'),
                                                  height: 24,
                                                ),
                                                const SizedBox(
                                                    width: defaultPadding / 2),
                                                Text(
                                                  'DK decorative',
                                                  style: GoogleFonts.kanit(
                                                      fontSize: bodytext,
                                                      color: colortext2),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Tab(
                                                  icon: Image.asset(
                                                      'assets/logos/line_logo.png'),
                                                  height: 24,
                                                ),
                                                const SizedBox(
                                                    width: defaultPadding / 2),
                                                Text(
                                                  'DK decorative',
                                                  style: GoogleFonts.kanit(
                                                      fontSize: bodytext,
                                                      color: colortext2),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Tab(
                                                  icon: Image.asset(
                                                      'assets/logos/twitter_logo.png'),
                                                  height: 24,
                                                ),
                                                const SizedBox(
                                                    width: defaultPadding / 2),
                                                Text(
                                                  'DK decorative',
                                                  style: GoogleFonts.kanit(
                                                      fontSize: bodytext,
                                                      color: colortext2),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            isExpanded: _expanded,
                            canTapOnHeader: false),
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          _expanded = !_expanded;
                        });
                      },
                    ),
                  ),
                  Container(
                    color: lightGray,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ContactInformation()));
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: colorWhite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExpansionPanelList(
                      elevation: 0,
                      children: [
                        ExpansionPanel(
                            backgroundColor: colorBorder,
                            headerBuilder: (context, isExpanded) {
                              return ListTile(
                                title: Text(
                                  'ธนาคาร',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                              );
                            },
                            body: Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(color: colorBorder),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.all(defaultPadding),
                                    width: 104,
                                    height: 104,
                                    child:
                                        Image.asset('assets/logos/kbank.png'),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'ชื่อ',
                                        style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext2,
                                        ),
                                      ),
                                      Text(
                                        'เลขบัญชี',
                                        style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext2,
                                        ),
                                      ),
                                      Text(
                                        'ธนาคาร สาขา',
                                        style: GoogleFonts.kanit(
                                          fontSize: bodytext,
                                          color: colortext2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Container(
                                        color: colortext1,
                                        child: IconButton(
                                          onPressed: () {
                                            showPopupRemoveBank();
                                          },
                                          icon: const Icon(
                                            Icons.delete_outline,
                                            color: colorWhite,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: colorbgbtn,
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Bank()));
                                          },
                                          icon: const Icon(
                                            Icons.edit,
                                            color: colortext1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            isExpanded: _expanded2,
                            canTapOnHeader: false),
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          _expanded2 = !_expanded2;
                        });
                      },
                    ),
                  ),
                  Container(
                    color: lightGray,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            settings: const RouteSettings(name: '/setting'),
                            builder: (context) => const AddBank(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: colorWhite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExpansionPanelList(
                      elevation: 0,
                      children: [
                        ExpansionPanel(
                            backgroundColor: colorBorder,
                            headerBuilder: (context, isExpanded) {
                              return ListTile(
                                title: Text(
                                  'ผู้ใช้',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                              );
                            },
                            body: Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(color: colorBorder),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Tab(
                                        icon: Image.asset(
                                            'assets/icons/no-stopping.png'),
                                        height: 20,
                                      ),
                                      const SizedBox(width: defaultPadding / 2),
                                      Text(
                                        'คุณ ',
                                        style: GoogleFonts.kanit(
                                            fontSize: bodytext,
                                            color: colortext2),
                                      ),
                                      const SizedBox(width: defaultPadding / 2),
                                      Text(
                                        '(sale)',
                                        style: GoogleFonts.kanit(
                                            fontSize: bodytext,
                                            color: colortext2),
                                      ),
                                      const SizedBox(width: defaultPadding / 2),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: defaultPadding,
                                            vertical: defaultPadding / 2),
                                        color: colortext2.withOpacity(0.25),
                                        child: Row(
                                          children: [
                                            Text(
                                              '1',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1),
                                            ),
                                            const SizedBox(
                                                width: defaultPadding / 2),
                                            const Icon(
                                              Icons.person,
                                              color: colortext1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Container(
                                        color: colortext1,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Tab(
                                            icon: Image.asset(
                                              'assets/icons/no-stopping-white.png',
                                              color: colorWhite,
                                            ),
                                            height: 24,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: colorbgbtn,
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.edit,
                                            color: colortext1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            isExpanded: _expanded3,
                            canTapOnHeader: false),
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          _expanded3 = !_expanded3;
                        });
                      },
                    ),
                  ),
                  Container(
                    color: lightGray,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddUser()));
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: colorWhite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExpansionPanelList(
                      elevation: 0,
                      children: [
                        ExpansionPanel(
                            backgroundColor: colorBorder,
                            headerBuilder: (context, isExpanded) {
                              return ListTile(
                                title: Text(
                                  'ผลงาน',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                              );
                            },
                            body: Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(color: colorBorder),
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'ชื่อผลงาน : ',
                                                style: GoogleFonts.kanit(
                                                    fontSize: bodytext,
                                                    color: colortext1),
                                              ),
                                              Text(
                                                'ชื่อผลงาน',
                                                style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext2,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                color: colortext1,
                                                child: IconButton(
                                                  onPressed: () {
                                                    showPopupRemoveWork();
                                                  },
                                                  icon: const Icon(
                                                    Icons.delete_outline,
                                                    color: colorWhite,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                color: colorbgbtn,
                                                child: IconButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const Work()));
                                                  },
                                                  icon: const Icon(
                                                    Icons.edit,
                                                    color: colortext1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: defaultPadding),
                                      Row(
                                        children: [
                                          Text(
                                            'ที่อยู่งาน : ',
                                            style: GoogleFonts.kanit(
                                                fontSize: bodytext,
                                                color: colortext1),
                                          ),
                                          Text(
                                            'ที่อยู่งาน',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: defaultPadding * 2),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Work()));
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'See More',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext2,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                          Text(
                                            ' > ',
                                            style: GoogleFonts.kanit(
                                              fontSize: bodytext,
                                              color: colortext2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            isExpanded: _expanded4,
                            canTapOnHeader: false),
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          _expanded4 = !_expanded4;
                        });
                      },
                    ),
                  ),
                  Container(
                    color: lightGray,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Work()));
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void showPopupRemoveWork() {
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
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.22,
              child: Column(
                children: [
                  Text('ยืนยันจะลบผลงานนี้',
                      style: GoogleFonts.kanit(fontSize: bodytext)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            primary: const Color(0xFFD4D4D4),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'ยกเลิก',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            primary: colortext1,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          'ลบรูปภาพสำเร็จ',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext),
                                        )),
                                  );
                                });
                          },
                          child: Text(
                            'ยืนยัน',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colorWhite),
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
  }

  void showPopupRemoveBank() {
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
              height: MediaQuery.of(context).size.height * 0.12,
              child: Column(
                children: [
                  Text('ยืนยันจะลบข้อมูลธนาคาร',
                      style: GoogleFonts.kanit(fontSize: bodytext)),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            primary: const Color(0xFFD4D4D4),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'ยกเลิก',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colortext1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            primary: colortext1,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    child: Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          'ลบข้อมูลธนาคารสำเร็จ',
                                          style: GoogleFonts.kanit(
                                              fontSize: bodytext),
                                        )),
                                  );
                                });
                          },
                          child: Text(
                            'ยืนยัน',
                            style: GoogleFonts.kanit(
                                fontSize: bodytext, color: colorWhite),
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
  }

  _logout() async {
    var sharePrefs = await SharedPreferences.getInstance();
    await sharePrefs.remove('token');
    await sharePrefs.remove('profile');

    Navigator.of(context, rootNavigator: true)
        .pushNamedAndRemoveUntil('/login', (route) => false);
  }
}
