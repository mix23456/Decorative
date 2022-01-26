import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/add_bank.dart';
import 'package:project_curtain/add_user.dart';
import 'package:project_curtain/contact_information.dart';
import 'package:project_curtain/screen/constants/constants.dart';
import 'package:project_curtain/work.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'SETTING',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.search,
              color: colorBlack,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'ค้นหา',
                        hintStyle: GoogleFonts.kanit(color: colortext2)),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        // height: 230,
        // width: 768,
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF5F5F5),
          // color: Colors.amber,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'ข้อมูลการติดต่อ',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ContactInformation()));
                    },
                    icon: const Icon(Icons.edit_outlined),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'ธนาคาร',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddBank()));
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'ผู้ใช้',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddUser()));
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'ผลงาน',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colortext1),
                      ),
                      const Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Work()));
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ExpansionTileCard(
                    key: cardA,
                    title: Text(
                      'ข้อมูลการติดต่อ',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    children: <Widget>[
                      const Divider(
                        thickness: 1.0,
                        height: 1.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding * 5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 320,
                                      height: 256,
                                      color: colorContiner,
                                    ),
                                    const SizedBox(width: defaultPadding * 2),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: defaultPadding / 2),
                                            child: Text(
                                              'บริษัท DK decorative',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: defaultPadding / 2),
                                            child: Text(
                                              'เลขกำกับภาษี 0629249453',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: defaultPadding / 2),
                                            child: Text(
                                              'ที่อยู่ : 188/5-6 ถ.ทุ่งโฮเต็ล ต.วัดเกต อ.เมือง จ.เชียงใหม่ 50000',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext,
                                                  color: colortext1),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: defaultPadding / 2),
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
                                  padding: const EdgeInsets.all(defaultPadding),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.facebook),
                                          const SizedBox(width: defaultPadding),
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
                                          const Icon(Icons.facebook),
                                          const SizedBox(width: defaultPadding),
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
                                          const Icon(Icons.facebook),
                                          const SizedBox(width: defaultPadding),
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
                                          const Icon(Icons.facebook),
                                          const SizedBox(width: defaultPadding),
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
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactInformation()));
                  },
                  icon: const Icon(Icons.edit_outlined),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ExpansionTileCard(
                    key: cardB,
                    title: Text(
                      'ธนาคาร',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    children: <Widget>[
                      const Divider(
                        thickness: 1.0,
                        height: 1.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              width: 104,
                              height: 104,
                              child: Image.asset('assets/logos/kbank.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove,
                                      color: colorWhite,
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
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddBank()));
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ExpansionTileCard(
                    key: cardC,
                    title: Text(
                      'ผู้ใช้',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    children: <Widget>[
                      const Divider(
                        thickness: 1.0,
                        height: 1.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'คุณ ',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext2),
                                ),
                                const Icon(Icons.person),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Container(
                                  color: colortext1,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.edit,
                                      color: colorWhite,
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
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddUser()));
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ExpansionTileCard(
                    key: cardD,
                    title: Text(
                      'ผลงาน',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                    children: <Widget>[
                      const Divider(
                        thickness: 1.0,
                        height: 1.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                const Spacer(),
                                Row(
                                  children: [
                                    Container(
                                      color: colortext1,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.remove,
                                          color: colorWhite,
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
                            const SizedBox(height: defaultPadding * 2),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'See More',
                                style: GoogleFonts.kanit(
                                  fontSize: bodytext,
                                  color: colortext2,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Work()));
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
