import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/add_customer.dart';
import 'package:project_curtain/edit_customer.dart';

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
          style: GoogleFonts.kanit(color: Colors.black, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'จัดการข้อมูลลูกค้า',
                    style: GoogleFonts.kanit(fontSize: 24),
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
                      style: GoogleFonts.kanit(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              color: Colors.grey[200],
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
                          style: GoogleFonts.kanit(fontSize: 16),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            // padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 0.5),
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
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            // padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              // border: Border.all(color: Colors.grey),
                              color: Colors.grey[600],
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 0.5),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete_outline),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color(0xFF707070),
                    height: 0,
                    thickness: 1,
                    endIndent: 110,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'เลขที่ผู้เสียภาษี ',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[600], fontSize: 16),
                        ),
                        TextSpan(
                          text: '3101908008',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[500], fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'บริษัท/สถานที่ทำงาน ',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[600], fontSize: 16),
                        ),
                        TextSpan(
                          text: 'ไท',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[500], fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'ที่อยู่ ',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[600], fontSize: 16),
                        ),
                        TextSpan(
                          text:
                              '12/3 ถนนระแกง ตำบลช้างคลาน อำเภอเมือง จังหวัดเชียงใหม่ 50100 ',
                          style: GoogleFonts.kanit(
                              color: Colors.grey[500], fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'อีเมล ',
                              style: GoogleFonts.kanit(
                                  color: Colors.grey[600], fontSize: 16),
                            ),
                            TextSpan(
                              text: '123@gmail.com',
                              style: GoogleFonts.kanit(
                                  color: Colors.grey[500], fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'เบอร์ติดต่อ 023456789',
                        style: GoogleFonts.kanit(
                            color: Colors.grey[600], fontSize: 16),
                      )
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
}
