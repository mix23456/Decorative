import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/add_customer.dart';

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
          style: GoogleFonts.kanit(color: Colors.black),
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
                          builder: (context) => AddCustomer(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.add),
                    label: Text(
                      'เพิ่ม',
                      style: GoogleFonts.kanit(),
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
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'คุณ',
                        style: GoogleFonts.kanit(),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.edit),
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.delete_outline),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Text(
                    'เลขผู้ที่เสียภาษี',
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    'บริษัท / สถานที่ทำงาน',
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    'ที่อยู่',
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    'อีเมล',
                    style: GoogleFonts.kanit(),
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
