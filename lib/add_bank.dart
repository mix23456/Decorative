import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/bank.dart';
import 'package:project_curtain/screen/constants/constants.dart';

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
            Icons.arrow_back_ios,
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
                onPressed: () {},
                child: Text(
                  'สร้าง QR รับเงิน',
                  style: GoogleFonts.kanit(
                      color: Colors.grey,
                      fontSize: bodytext,
                      decoration: TextDecoration.underline),
                )),
            const SizedBox(height: defaultPadding),
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
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'บันทึกข้อมูลสำเร็จ',
                                  style: GoogleFonts.kanit(fontSize: bodytext),
                                )),
                          );
                        });
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Bank()));
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
      ),
    );
  }
}
