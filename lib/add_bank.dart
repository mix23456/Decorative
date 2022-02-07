import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/bank.dart';
import 'package:project_curtain/constants.dart';

class AddBank extends StatefulWidget {
  const AddBank({Key? key}) : super(key: key);

  @override
  _AddBankState createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
  String? valueChoose;

  List listItem = ["A", "B", "C", "D", "E"];
  String? selectedValue;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  final List<String> genderItems = [
    'Male',
    'Female',
  ];
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
            Icons.arrow_back_ios_new,
            color: colorBlack,
          ),
        ),
        title: Text(
          'เพิ่มธนาคาร',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(defaultPadding),
        margin: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField2(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              isExpanded: true,
              hint: Text(
                'เลือกธนาคาร',
                style: GoogleFonts.kanit(fontSize: bodytext, color: colortext2),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 30,
              buttonHeight: 60,
              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              items: [],
              // items: genderItems
              //     .map((item) => DropdownMenuItem<String>(
              //           value: item,
              //           child: Text(
              //             item,
              //             style: const TextStyle(
              //               fontSize: 14,
              //             ),
              //           ),
              //         ))
              //     .toList(),
              // validator: (value) {
              //   if (value == null) {
              //     return 'Please select gender.';
              //   }
              // },
              // onChanged: (value) {
              //   //Do something when changing the item if you want.
              // },
            ),
            const SizedBox(height: defaultPadding),
            TextField(
              decoration: InputDecoration(
                hintText: 'ชื่อบัญชี',
                hintStyle:
                    GoogleFonts.kanit(color: Colors.grey, fontSize: bodytext),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            TextField(
              decoration: InputDecoration(
                hintText: 'เลขที่บัญชี',
                hintStyle:
                    GoogleFonts.kanit(color: Colors.grey, fontSize: bodytext),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            TextButton(
                onPressed: () {
                  showPopupAddImage();
                },
                child: Text(
                  'เพิ่มรูปภาพ QR รับเงิน',
                  style: GoogleFonts.kanit(
                      color: Colors.grey,
                      fontSize: bodytext,
                      decoration: TextDecoration.underline),
                )),
            const SizedBox(height: defaultPadding),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: defaultPadding * 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160,
              height: 48,
              // padding:
              //     const EdgeInsets.symmetric(horizontal: 12, vertical: 58),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: colortext2.withOpacity(0.25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'ยกเลิก',
                  style:
                      GoogleFonts.kanit(fontSize: bodytext, color: colortext1),
                ),
              ),
            ),
            const SizedBox(width: defaultPadding),
            SizedBox(
              width: 160,
              height: 48,
              // padding:
              //     const EdgeInsets.symmetric(horizontal: 12, vertical: 58),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: colortext1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                onPressed: () {
                  showPopupSave();
                },
                icon: const Icon(Icons.save),
                label: Text(
                  'บันทึก',
                  style: GoogleFonts.kanit(fontSize: bodytext),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showPopupAddImage() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'เพิ่มรูปภาพ',
                      style: GoogleFonts.kanit(fontSize: bodytext),
                    ),
                    const SizedBox(width: defaultPadding),
                    Container(
                      width: 32,
                      height: 32,
                      color: colorbgbtn,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            showPopupconfirm();
                          },
                          icon: const Icon(Icons.image, color: colortext1),
                          iconSize: 18),
                    )
                  ],
                )),
          );
        });
  }

  void showPopupconfirm() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 28, horizontal: defaultPadding),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.118,
                child: Column(
                  children: [
                    Text('ยืนยันจะใช้รูปภาพนี้',
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
                              Navigator.pop(context);
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
            ),
          );
        });
  }

  void showPopupSave() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'บันทึกข้อมูลสำเร็จ',
                  style: GoogleFonts.kanit(fontSize: bodytext),
                )),
          );
        });
  }
}
