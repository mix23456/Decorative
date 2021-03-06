import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/page/edit/edit_customer.dart';
import 'package:project_curtain/page/history.dart';

class SearchCustomer extends StatefulWidget {
  const SearchCustomer({Key? key}) : super(key: key);

  @override
  _SearchCustomerState createState() => _SearchCustomerState();
}

class _SearchCustomerState extends State<SearchCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: colorBlack,
          ),
        ),
        title: Text(
          'ผลการค้นหาชื่อลูกค้า',
          style: GoogleFonts.kanit(fontSize: subtitle, color: colorBlack),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
            left: defaultPadding * 3,
            right: defaultPadding * 3,
            top: defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: defaultPadding),
                const Icon(Icons.search)
              ],
            ),
            const SizedBox(height: defaultPadding),
            Container(
              // margin:
              //     const EdgeInsets.symmetric(horizontal: defaultPadding * 5),
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.amber,
                        child: Text(
                          'คุณ แก้ว มาลูน',
                          style: GoogleFonts.kanit(fontSize: bodytext),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            // padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: colorbgbtn,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: (Offset(4, 4)),
                                ),
                              ],
                              // border: Border.all(color: Colors.grey),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HistoryScreen(),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.history),
                              color: colortext1,
                            ),
                          ),
                          Container(
                            // padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: colorbgbtn,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: (Offset(4, 4)),
                                ),
                              ],
                              // border: Border.all(color: Colors.grey),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const EditCustomer(),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.edit),
                              color: colortext1,
                            ),
                          ),
                          Container(
                            // padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              // border: Border.all(color: Colors.grey),
                              color: colortext1,
                              boxShadow: [
                                BoxShadow(
                                  color: colortext2,
                                  blurRadius: 5,
                                  offset: (Offset(4, 4)),
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                showDeleteCustomerDialog();
                              },
                              icon: const Icon(Icons.delete_outline),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: colortext1,
                    height: 0,
                    thickness: 1,
                    endIndent: 160,
                  ),
                  const SizedBox(height: defaultPadding),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'เลขที่ผู้เสียภาษี ',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[600], fontSize: bodytext),
                        ),
                        TextSpan(
                          text: '3101908008',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[500], fontSize: bodytext),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'บริษัท/สถานที่ทำงาน ',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[600], fontSize: bodytext),
                        ),
                        TextSpan(
                          text: 'ไท',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[500], fontSize: bodytext),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'ที่อยู่ ',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[600], fontSize: bodytext),
                        ),
                        TextSpan(
                          text:
                              '12/3 ถนนระแกง ตำบลช้างคลาน อำเภอเมือง จังหวัดเชียงใหม่ 50100 ',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[500], fontSize: bodytext),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'อีเมล ',
                              style: GoogleFonts.kanit(
                                  color: Colors.grey[600], fontSize: bodytext),
                            ),
                            TextSpan(
                              text: '123@gmail.com',
                              style: GoogleFonts.kanit(
                                  color: Colors.grey[500], fontSize: bodytext),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'เบอร์ติดต่อ 023456789',
                        style: GoogleFonts.kanit(
                            color: Colors.grey[600], fontSize: bodytext),
                      ),
                      Container(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDeleteCustomerDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 28, horizontal: defaultPadding),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.12,
              child: Column(
                children: [
                  Text(
                    'ยืนยันจะลบข้อมูลลูกค้า',
                    style: GoogleFonts.kanit(fontSize: bodytext),
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                          'ลบข้อมูลลูกค้าสำเร็จ',
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
}
