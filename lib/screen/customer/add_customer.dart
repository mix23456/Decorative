import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  _AddCustomerState createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: true,
        // backgroundColor: Theme.of(context).cardColor,
        title: Text(
          'เพิ่มรายชื่อลูกค้า',
          style: GoogleFonts.kanit(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.white,
              ),
              child: Form(
                // key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ชื่อ',
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "โปรดระบุชื่อ",
                        contentPadding: const EdgeInsets.all(15),
                        hintStyle: GoogleFonts.kanit(fontSize: 18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "นามสกุล",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.kanit(fontSize: 18),
                          hintText: 'โปรดระบุนามสุล',
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          filled: false,
                          fillColor: Colors.white70),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "ชื่อเล่น",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextFormField(
                      autofocus: false,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.kanit(fontSize: 18),
                          hintText: 'โปรดระบุชื่อเล่น',
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          filled: false,
                          fillColor: Colors.white70),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "อีเมล",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.kanit(fontSize: 18),
                        hintText: 'โปรดระบุอีเมล',
                        contentPadding: const EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "เบอร์โทรศัพท์",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.kanit(fontSize: 18),
                          hintText: 'โปรดระบุเบอร์โทรศัพท์',
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          filled: false,
                          fillColor: Colors.white70),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "ที่อยู่",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.kanit(fontSize: 18),
                            hintText: 'โปรดระบุที่อยู่',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: false,
                            fillColor: Colors.white70)),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "ตำบล",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.kanit(fontSize: 18),
                            hintText: 'โปรดระบุตำบล',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: false,
                            fillColor: Colors.white70)),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "อำเภอ",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextField(
                        // controller: maskedController,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.kanit(fontSize: 18),
                            hintText: 'โปรดระบุอำเภอ',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: false,
                            fillColor: Colors.white70)),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "จังหวัด",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextField(
                        // controller: maskedController,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.kanit(fontSize: 18),
                            hintText: 'โปรดระบุจังหวัด',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: false,
                            fillColor: Colors.white70)),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      "รหัสไปรษณีย์",
                      style: GoogleFonts.kanit(),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextField(
                        // controller: maskedController,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.kanit(fontSize: 18),
                            hintText: 'โปรดระบุรหัสไปรษณีย์',
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            filled: false,
                            fillColor: Colors.white70)),
                    const SizedBox(height: defaultPadding / 1),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "เพิ่ม",
                          style: GoogleFonts.kanit(),
                        ),
                        // style: ElevatedButton.styleFrom(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
