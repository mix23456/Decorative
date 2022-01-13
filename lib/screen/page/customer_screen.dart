import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/customer/add_customer.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('จัดการข้อมูลลูกค้า',
                      style: GoogleFonts.kanit(fontSize: 30)),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddCustomer()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'เพิ่มลูกค้า',
                            style: GoogleFonts.kanit(),
                          ),
                          const WidgetSpan(
                            child: Icon(Icons.add, size: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.zero,
              child: Card(
                color: Colors.white,
                shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "คุณ :",
                        style: GoogleFonts.kanit(
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: defaultPadding / 4,
                      ),
                      Text(
                        "ที่อยู่ :",
                        style: GoogleFonts.kanit(),
                      ),
                      Text(
                        "อีเมล :",
                        style: GoogleFonts.kanit(),
                      ),
                      Text(
                        "เบอร์ติดต่อ :",
                        style: GoogleFonts.kanit(),
                      ),
                    ],
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
