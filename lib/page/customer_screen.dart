import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/add_customer.dart';
import 'package:project_curtain/edit_customer.dart';
import 'package:project_curtain/history.dart';
import 'package:project_curtain/constants.dart';
import 'package:project_curtain/search_customer.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'CUSTOMER',
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
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'ค้นหา',
                              hintStyle: GoogleFonts.kanit(color: colortext2)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SearchCustomer()));
                        },
                        icon: const Icon(
                          Icons.search,
                          color: colorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: defaultPadding * 3),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'จัดการข้อมูลลูกค้า',
                  style: GoogleFonts.kanit(fontSize: subtitle),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddCustomer(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: Text(
                    'เพิ่ม',
                    style: GoogleFonts.kanit(fontSize: bodytext),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorBorder,
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
                                  color: colortext2,
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
                                  color: colortext2,
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
